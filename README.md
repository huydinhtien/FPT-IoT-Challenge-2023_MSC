# Developing a wearable device for the elderly and patients undergoing functional recovery
## Machine learning algorithm for activity classification
### What is machine learning?
Machine learning is a subset of artificial intelligence that focuses on the development of algorithms and statistical models that enable computers to improve their performance on a specific task through learning from data, without being explicitly programmed. Machine learning algorithms analyze large datasets, find patterns, and make predictions or decisions based on the information they've learned. This technology has significantly impacted industries and continues to drive innovation and automation in a wide range of applications. In this project, we use the Decision tree algorithm to train a human activity classification model which will be embedded to a wearable device for real-time activity monitoring.

### What is decision tree?
Decision tree is a popular machine learning algorithm used for both classification and regression tasks. It is a visual representation of a decision-making process that resembles an upside-down tree. Decision tree works by recursively splitting data into subsets based on the most significant attributes or features. At each internal node of the tree, a decision is made, and branches are created that lead to child nodes. These decisions continue until a leaf node is reached, which contains the final classification or regression prediction.
### How we apply machine learning in this project?
In this project, we developed a classification model for five basic activities: lying, sitting, standing, walking, and jogging using decision tree. The model with the highest accuracy will be exported and embedded on a microcontroller.

You can find the source code of the decision tree we used in machine_learning_algorithm folder.
## Wearable device for the elderly and patients undergoing functional recovery
### Description
You can find the source code for the wearable device in wearable_device_program folder.

This project using the BGM220 Bluetooth Wireless Explore Kit as a microcontroller to read accelerometer value from ADXL345 via I2C. These value is used to compute the features as input for human classification algothrithm. The system using a LiPo battery and measured battery percentage through IADC.

### Hardware Required
* BGM220P Bluetooth Wireless Explore Kit.
* ADXL345 accelerometer sensor module.
* LiPo battery 600mAh, 3.7V.
* Two LED indicate for power and BLE connection.

### Create a project based on an example project
1. From the Launcher Home, add your hardware to My Products, click on it, and click on the EXAMPLE PROJECTS & DEMOS tab. Find the example project with the filter "SoC Empty".
![Imgur](https://i.imgur.com/Gl0qvlu.png)
2. Import the GATT configuration:
    * Create the .slcp file in the project. 
    * Select the CONFIGURATION TOOLS tab and open the "Bluetooth GATT Configurator".
    * Find the Import button and import the attached gatt_configuration.btconf file.
    * Save the GATT configuration (ctrl-s).
![Imgur](https://i.imgur.com/jFj5WhQ.png)

3. Open the .slcp file again. Select the "SOFTWARE COMPONENTS" tab and do the following changes:

* Install the IADC component (found under Platform > Peripheral).
![Imgur](https://i.imgur.com/VKNjGDm.png)
* Install IO Stream: USART component with the default instance name: vcom.
![Imgur](https://i.imgur.com/Owdip1Q.png)
* Install the I2C component
![Imgur](https://i.imgur.com/a8id392.png)

#### Note:

* Make sure that this repository is added to Preferences > Simplicity Studio > External Repos.
* Do not forget to flash a bootloader to your board, see Bootloader for more information.

### How does it work?
Follow the below steps to test the example:

1. Open the Motion Care app on your android mobile device.
![Imgur](https://i.imgur.com/xFUW3kD.png)

2. Find your device in the "", advertising as "MSC" and connect to it.
![Imgur](https://i.imgur.com/Uj5oUQT.png)
## Motion Care BLE Mobile Application
You can find the source code for the Motion Care Android mobile application in msc_android_app folder.

### What is Motion Care BLE mobile app? 
Motion Care will use for monitoring the activiy of the users! With Motion Care, you can quickly see what’s activity that the user is taking.

### How does it work? 
Using Motion Care BLE mobile app is easy. It runs on your Android mobile devices such as a smartphone or tablet. It utilizes the Bluetooth adapter on the mobile to scan, connect and interact with nearby BLE hardware.

After connecting the Motion Care app and BLE hardware (e.g., our wearable device), the wearable device shows a green light indicating when your setup is ready to go. The app will instantly recognize some daily basic activities including lying, sitting, standing, walking and jogging.

# Additional information
For more information about this project, feel free to contact us directly at room 704, A4 building, Phenikaa University, Yen Nghia, Ha Dong, Hanoi or visit our website ssalab.phenikaa-uni.edu.vn. 









