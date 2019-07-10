package com.example.testnativeflutter

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.widget.FrameLayout
import io.flutter.facade.Flutter

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val flutterView = Flutter.createView(this, lifecycle, "r1")
        val layout = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        addContentView(flutterView, layout)
    }
}
