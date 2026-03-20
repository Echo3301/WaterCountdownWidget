WaterCountdownWidget by Angelica B
An Android widget to track your water intake

Background
This project was created as a simple tool to keep track of how much water I drink throughout the day.
Since I’ve recently been focusing a lot on my health, I wanted a reminder that is always visible on the home screen without needing to open an app.
The result is a minimalist Android widget with a glass design that fills and empties based on intake.

About the App
WaterCountdownWidget is a home screen widget for Android built with .NET MAUI / Xamarin.Android and C#.
The widget counts down from 7 — one glass at a time — and automatically resets at midnight.

Features
• Counts down from 7 glasses per day
• Tap the number to decrease the counter by one
• Tap 0 to reset back to 7
• The background shows a filled glass (blue) or empty glass (white) depending on status
• Vibrates on each tap
• Automatic reset at midnight every day
• 1×1 size, takes minimal space on the home screen

Technical Stack
• Language: C#
• Framework: .NET 10 (net10.0-android)
• Platform: Android (min API 24)
• Tools: Visual Studio Code, Android Studio (emulator), adb

Project Structure
WaterCountdownWidget/   
  Widgets/     
    WaterCountdownWidgetProvider.cs   – Widget logic   
  Resources/     
    layout/widget_layout.xml          – Widget layout     
    xml/widget_info.xml               – Widget metadata     
    drawable/water_full.png           – Full glass icon     
    drawable/water_empty.png          – Empty glass icon   
  AndroidManifest.xml   
  WaterCountdownWidget.csproj

Installation
• Clone the project and open it in VS Code
• Run: dotnet build
• Connect an Android device with USB debugging enabled
• Run: dotnet publish -f net10.0-android -c Release
• Install: adb install -r <path to APK>
• Long press on the home screen → Widgets → Water Countdown Widget

Built with a focus on simplicity and health