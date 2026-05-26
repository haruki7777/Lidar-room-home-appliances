package com.haruki.lidarhomeappliances

import android.app.Activity
import android.os.Bundle
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Button

class MainActivity : Activity() {
    private var opened = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(48, 96, 48, 48)
        }

        val title = TextView(this).apply {
            text = "FitAR Android MVP"
            textSize = 26f
        }

        val status = TextView(this).apply {
            text = "Door: closed"
            textSize = 18f
        }

        val button = Button(this).apply {
            text = "Open"
            setOnClickListener {
                opened = !opened
                text = if (opened) "Close" else "Open"
                status.text = if (opened) "Door: open" else "Door: closed"
            }
        }

        root.addView(title)
        root.addView(status)
        root.addView(button)
        setContentView(root)
    }
}
