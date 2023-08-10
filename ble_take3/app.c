/***************************************************************************//**
 * @file
 * @brief Core application logic.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/
#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "gatt_db.h"
#include "app.h"
#include "sl_app_assert.h"
#include "em_cmu.h"

#define UINT8_TO_BITSTREAM(p, n)      { *(p)++ = (uint8_t)(n); }
#define UINT32_TO_BITSTREAM(p, n)     { *(p)++ = (uint8_t)(n);         \
                                        *(p)++ = (uint8_t)((n) >> 8);  \
                                        *(p)++ = (uint8_t)((n) >> 16); \
                                        *(p)++ = (uint8_t)((n) >> 24); }
#define FLT_TO_UINT32(m, e)           (((uint32_t)(m) & 0x00FFFFFFU) \
                                       | (uint32_t)((uint32_t)(e) << 24))
extern bool Timer0_OF;
double xyz[3];
double overlap_x[OVERLAP_SIZE],overlap_y[OVERLAP_SIZE],overlap_z[OVERLAP_SIZE];
double arrayX[WINDOW_SIZE],arrayY[WINDOW_SIZE],arrayZ[WINDOW_SIZE];
double tempX[OVERLAP_SIZE],tempY[OVERLAP_SIZE],tempZ[OVERLAP_SIZE];
// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;
static uint8_t connection_handle = 0xff;
static void fake_data();
static uint8_t get_data();

/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
SL_WEAK void app_init(void)
{
    CHIP_Init();
    initCMU();
    Timer0_Init();
    Timer0_Enable();
    GPIO_PinModeSet(SCL_PORT, SCL_PIN, gpioModeWiredAndPullUpFilter,1);
    GPIO_PinModeSet(SDA_PORT,SDA_PIN,gpioModeWiredAndPullUpFilter,1);
    GPIO_PinModeSet(gpioPortA,4,gpioModePushPull,1);
    i2c_Init();
    init_adxl();
    //set activity/ inactivity thresholds (0-255)
    setActivityThreshold(75);
    setInactivityThreshold(75);
    setTimeInactivity(10);
    //look of inactivity/activity movement on this axes - 1 == on; 0 == off
    i2c_Write(ADXL345_REG_ACT_INACT_CTL,0x77);
    //look of tap movement
    //i2c_Write(ADXL345_REG_TAP_AXES,0x01);


    //set values for what is a tap, and what is a double tap (0-255)

    //set values for what is considered freefall (0-255)
    i2c_Write(ADXL345_REG_THRESH_FF, 0x7);
    i2c_Write(ADXL345_REG_TIME_FF, 0x2D);

    /* get the 5 first values with 20Hz sample rate and save to window array
     *
     */

    int i = 0;
      while(i<5){
                     get_acc(xyz);
                     overlap_x[i] = xyz[0];
                     overlap_y[i] = xyz[1];
                     overlap_z[i] = xyz[2];
                     ++i;
                 }
      memcpy(arrayX,overlap_x, sizeof(overlap_x));
      memcpy(arrayY,overlap_y, sizeof(overlap_y));
      memcpy(arrayZ,overlap_z, sizeof(overlap_z));
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application init code here!                         //
  // This is called once during start-up.                                    //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
SL_WEAK void app_process_action(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application code here!                              //
  // This is called infinitely.                                              //
  // Do not call blocking functions from here!                               //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
  sl_status_t sc;
  bd_addr address;
  uint8_t address_type;
  uint8_t system_id[8];

  switch (SL_BT_MSG_ID(evt->header)) {
    // -------------------------------
    // This event indicates the device has started and the radio is ready.
    // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id:

      sc = sl_bt_system_get_identity_address(&address, &address_type);
                  sl_app_assert(sc == SL_STATUS_OK,
                                "[E: 0x%04x] Failed to get Bluetooth address\n",
                                (int)sc);

                  // Pad and reverse unique ID to get System ID.
                  system_id[0] = address.addr[5];
                  system_id[1] = address.addr[4];
                  system_id[2] = address.addr[3];
                  system_id[3] = 0xFF;
                  system_id[4] = 0xFE;
                  system_id[5] = address.addr[2];
                  system_id[6] = address.addr[1];
                  system_id[7] = address.addr[0];

                  sc = sl_bt_gatt_server_write_attribute_value(gattdb_system_id,// my new profile
                                                               0,
                                                               sizeof(system_id),
                                                               system_id);
                  sl_app_assert(sc == SL_STATUS_OK,
                                "[E: 0x%04x] Failed to write attribute\n",
                                (int)sc);
      // Create an advertising set.
      sc = sl_bt_advertiser_create_set(&advertising_set_handle);
      app_assert_status(sc);

      // Generate data for advertising
      sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                 sl_bt_advertiser_general_discoverable);
      app_assert_status(sc);

      // Set advertising interval to 100ms.
      sc = sl_bt_advertiser_set_timing(
        advertising_set_handle,
        160, // min. adv. interval (milliseconds * 1.6)
        160, // max. adv. interval (milliseconds * 1.6)
        0,   // adv. duration
        0);  // max. num. adv. events
      app_assert_status(sc);
      // Start advertising and enable connections.
      sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                         sl_bt_advertiser_connectable_scannable);
      app_assert_status(sc);
      break;

    // -------------------------------
    // This event indicates that a new connection was opened.
    case sl_bt_evt_connection_opened_id:
      connection_handle = evt->data.evt_connection_opened.connection;
      break;

    // -------------------------------
    // This event indicates that a connection was closed.
    case sl_bt_evt_connection_closed_id:

      connection_handle = 0xff;

      /*sc = sl_bt_system_set_lazy_soft_timer(0, 0, 0, 0);
      app_assert(sc == SL_STATUS_OK,
                             "[E: 0x%04x] Failed to stop a software timer\n",
                             (int)sc);*/

      sc = sl_bt_legacy_advertiser_generate_data(advertising_set_handle,
                                                       sl_bt_advertiser_general_discoverable);
      app_assert_status(sc);


      // Restart advertising after client has disconnected.
      sc = sl_bt_legacy_advertiser_start(advertising_set_handle,
                                         sl_bt_advertiser_connectable_scannable);
      app_assert_status(sc);
      break;
    case sl_bt_evt_gatt_server_characteristic_status_id:
          /* Check that the characteristic in question is temperature -
           * its ID is defined in gatt_configuration.btconf as
           *   "temperature_measurement".
           * Also check that status_flags = 1, meaning that the characteristic
           * client configuration was changed (notifications or indications
           * enabled or disabled). */
          if (evt->data.evt_gatt_server_characteristic_status.status_flags
              != gatt_server_client_config) {
            break;
          }
          if (evt->data.evt_gatt_server_characteristic_status.characteristic
              != gattdb_test_char) {
            break;
          }

          if (evt->data.evt_gatt_server_characteristic_status.client_config_flags
              == gatt_indication) {
            /* Indications have been turned ON - start the repeating timer.
             * The 1st parameter '32768' tells the timer to run for
             * 1 second (32.768 kHz oscillator), the 2nd parameter is
             * the timer handle and the 3rd parameter '0' tells
             * the timer to repeat continuously until stopped manually.*/
            sc = sl_bt_system_set_lazy_soft_timer(4096, 0, 0, 0);
            app_assert(sc == SL_STATUS_OK,
                       "[E: 0x%04x] Failed to start a software timer\n",
                       (int)sc);
          } else if (evt->data.evt_gatt_server_characteristic_status.
                     client_config_flags
                     == gatt_disable) {
            /* Indications have been turned OFF - stop the timer. */
            sc = sl_bt_system_set_lazy_soft_timer(0, 0, 0, 0);
            app_assert(sc == SL_STATUS_OK,
                       "[E: 0x%04x] Failed to stop a software timer\n",
                       (int)sc);
          }
          break;
    case sl_bt_evt_system_soft_timer_id:
              /* HAR as defined in the function\
               *   har() */

              fake_data();

             break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////

    // -------------------------------
    // Default event handler.
    default:
      break;
  }
}

void fake_data(){

  sl_status_t sc;
  uint8_t temp_buffer[5];
  uint8_t flags = 0x00;
  uint8_t *p = temp_buffer;


          UINT8_TO_BITSTREAM(p, flags);

          //test_data = get_data();

          //test = FLT_TO_UINT32(test_data, 0);

          UINT32_TO_BITSTREAM(p, get_data());
          sc = sl_bt_gatt_server_send_indication(connection_handle,
                                                 gattdb_test_char,
                                                       5,
                                                       temp_buffer);

}


uint8_t get_data(){
  static uint8_t value;


  for(int i =0;;i++){
      static int j;
      get_acc(xyz);

      if(Timer0_OF == true){
      /// save 5 values to each window.
          arrayX[j+OVERLAP_SIZE] = xyz[0];
          arrayY[j+OVERLAP_SIZE] = xyz[1];
          arrayZ[j+OVERLAP_SIZE] = xyz[2];
      /// save 5 temporary values to re-assign overlap array.
          tempX[j] = xyz[0];
          tempY[j] = xyz[1];
          tempZ[j] = xyz[2];

          Timer0_OF = false;
          j++;
      }
      if(j>=OVERLAP_SIZE){
       /*Save 5 values's overlap to array[0:4] and re-assign these overlap
        * values to windows array
        */

       //X
          memcpy(arrayX,overlap_x, sizeof(overlap_x));
          memcpy(overlap_x,tempX, sizeof(tempX));
        //Y
          memcpy(arrayY,overlap_y, sizeof(overlap_y));
          memcpy(overlap_y,tempY, sizeof(tempY));

        //Z
          memcpy(arrayZ,overlap_z, sizeof(overlap_z));
          memcpy(overlap_z,tempZ, sizeof(tempZ));

        ///feature measurement
        //double mean_x = findMean(arrayX, WINDOW_SIZE);
        //double range_x = findRange(arrayX, WINDOW_SIZE);
          double iqr_x =findIQR(arrayX, WINDOW_SIZE); //75,25
          double std_x = findSTD(arrayX, WINDOW_SIZE);
        //double std_y = findSTD(arrayY, WINDOW_SIZE);
          double rms_x = findRMS(arrayX, WINDOW_SIZE);
          double rms_y = findRMS(arrayY, WINDOW_SIZE);
          double range_y = findRange(arrayY, WINDOW_SIZE);
          double mean_y = findMean(arrayY, WINDOW_SIZE);

        /* Activity classification: return value = {1,2,3,4,5} to send
         * indication from server to client.
         * 1 : Lying
         * 2 : Standing
         * 3 : Sitting
         * 4 : Jogging
         * 5 : Walking
         */

          check_lying(rms_x,&value);
          check_standing(std_x,rms_x,rms_y,&value);
          check_sitting(rms_x,std_x,rms_y,iqr_x,range_y,mean_y,&value);
          check_jogging(rms_x,std_x,iqr_x,range_y,&value);
          check_walking(rms_x,std_x,iqr_x,range_y,mean_y,&value);

        j=0;

    }
      return value;
  }
}
