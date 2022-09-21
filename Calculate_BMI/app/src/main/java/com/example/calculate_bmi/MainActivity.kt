package com.example.calculate_bmi

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        button_com.setOnClickListener {
            if(input_height.text?.length != 0
                && input_weight.text?.length != 0)
            {
                val height : Float = input_height.text.toString().toFloat()/100
                val weight : Float = input_weight.text.toString().toFloat()

                val bmi : Float = weight/(height*height)

                text_result.text = bmi.toString()

                text_your_bmi.text = getString(R.string.your_bmi)

                if(bmi < 18.5) text_result2.text = "Underweight"
                if(bmi > 18.5 && bmi < 24.9) text_result2.text = "Normal weight"
                if(bmi > 25.0 && bmi < 29.9) text_result2.text = "Overweight"
                if(bmi > 30) text_result2.text = "Obesity"
            }
        }

        button_reset.setOnClickListener {
            if(input_height.text?.length != 0
                || input_weight.text?.length != 0)
            {
                input_weight.setText("")
                input_height.setText("")
                text_result.text = ""
                text_your_bmi.text = ""
                text_result2.text = ""
            }
        }

    }
}