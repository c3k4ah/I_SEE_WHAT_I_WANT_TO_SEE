package com.example.imagination

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivityLaunchConfigs.BackgroundMode.transparent
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?){
    intent.putExtra("background_mode",transparent.toString())
    super.onCreate(savedInstanceState)
    }
}
