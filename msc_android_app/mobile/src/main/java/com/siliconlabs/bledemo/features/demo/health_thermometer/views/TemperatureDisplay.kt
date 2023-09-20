package com.siliconlabs.bledemo.features.demo.health_thermometer.views

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Typeface
import android.util.AttributeSet
import android.util.TypedValue
import android.view.View
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.content.ContextCompat
import com.siliconlabs.bledemo.features.demo.health_thermometer.models.TemperatureReading
import com.siliconlabs.bledemo.R
import kotlin.math.round

class TemperatureDisplay : LinearLayout {
    private var mainTempText: TextView? = null
    private var decimalText: TextView? = null
    private var degreeSymbol: TextView? = null
    private var defaultTextSize = 0f
    private var largeTextSize = 0f
    private var smallTextSize = 0f
    private var temp: Double? = null
    private var currentType: TemperatureReading.Type? = null
    private var currentReading: TemperatureReading? = null
    private var imageView: ImageView? = null

    constructor(context: Context?) : super(context) {
        init(null)
    }

    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs) {
        init(attrs)
    }

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        init(attrs)
    }

    private fun init(attrs: AttributeSet?) {
        defaultTextSize = if (isInEditMode) 15f else context.resources.getDimension(R.dimen.thermo_graph_time_text_size)
        if (attrs != null) {
            val typedArray = context.obtainStyledAttributes(attrs, R.styleable.TemperatureDisplay)
            largeTextSize = typedArray.getDimension(R.styleable.TemperatureDisplay_large_text_size, defaultTextSize)
            smallTextSize = typedArray.getDimension(R.styleable.TemperatureDisplay_small_text_size, defaultTextSize)
            typedArray.recycle()
        } else {
            largeTextSize = defaultTextSize
            smallTextSize = largeTextSize
        }
        currentType = TemperatureReading.Type.FAHRENHEIT
        View.inflate(context, R.layout.temperature_display, this)
        imageView = findViewById(R.id.my_image_view)
    }

    override fun onFinishInflate() {
        super.onFinishInflate()
        mainTempText = findViewById(R.id.temp_display_primary)
        mainTempText?.let {
            it.setTextSize(TypedValue.COMPLEX_UNIT_PX, largeTextSize)
            it.setTextColor(context.getColor(R.color.blue_primary))
        }
        degreeSymbol?.let {
            it.setTextSize(TypedValue.COMPLEX_UNIT_PX, largeTextSize)
            it.setTextColor(context.getColor(R.color.blue_primary))
        }
        decimalText?.let {
            it.setTextSize(TypedValue.COMPLEX_UNIT_PX, smallTextSize)
            it.setTextColor(context.getColor(R.color.blue_primary))
        }
    }

    @SuppressLint("SetTextI18n")
    private fun setTemperature(temperature: Double) {
        val rounded = round(temperature * 10) / 10
        when (rounded) {
            0.0 -> {
                mainTempText?.text = "Cập nhật ..."
                decimalText?.text = ""
            }

            32.0 -> {
                mainTempText?.text = "Loading..."
                decimalText?.text = ""
            }

            1.0 -> {
                mainTempText?.text = "Nằm"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.lying)
            }

            33.8 -> {
                mainTempText?.text = "Lying"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.lying)
            }

            2.0 -> {
                mainTempText?.text = "Đứng"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.standing)
            }

            35.6 -> {
                mainTempText?.text = "Standing"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.standing)
            }

            3.0 -> {
                mainTempText?.text = "Ngồi"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.sitting)
            }

            37.4 -> {
                mainTempText?.text = "Sitting"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.sitting)
            }

            4.0 -> {
                mainTempText?.text = "Chạy"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.jogging)
            }

            39.2 -> {
                mainTempText?.text = "Jogging"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.jogging)
            }

            5.0 -> {
                mainTempText?.text = "Đi bộ"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.zyro_image)
            }

            41.0 -> {
                mainTempText?.text = "Walking"
                decimalText?.text = ""
                imageView?.setImageResource(R.drawable.walking)
            }

            else -> {
                mainTempText?.text = (rounded.toString().split(".").elementAtOrNull(0) ?: "0") + "."
                decimalText?.text = (rounded.toString().split(".").elementAtOrNull(1) ?: "0")
            }
        }

    }

    fun setFontFamily(familyName: String?, style: Int) {
        val typeface = Typeface.create(familyName, style)
        mainTempText?.typeface = typeface
        decimalText?.typeface = typeface
        degreeSymbol?.typeface = typeface
    }

    fun setTemperature(reading: TemperatureReading?) {
        if (reading != null) {
            currentReading = reading
            setTemperature(reading.getTemperature(currentType!!))
        }
    }

    fun setCurrentType(currentType: TemperatureReading.Type?) {
        this.currentType = currentType
        setTemperature(currentReading)
    }
}