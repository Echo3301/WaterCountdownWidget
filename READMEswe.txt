WaterCountdownWidget av Angelica B
En Android-widget för att hålla koll på ditt vattenintag

Bakgrund
Det här projektet skapades som ett enkelt verktyg för att hålla koll på hur mycket vatten jag dricker under dagen. 
Eftersom jag på sistone fokuserat mycket på min hälsa ville jag ha en påminnelse alltid synlig på hemskärmen utan att behöva öppna en app. 
Resultatet blev en minimalistisk Android-widget med ett glasmotiv som fylls och töms med intaget.

Om appen
WaterCountdownWidget är en hemskärmswidget för Android byggd med .NET MAUI / Xamarin.Android och C#. 
Widgeten räknar ner från 7 – ett glas åt gången – och återställer sig automatiskt vid midnatt.

Funktioner
•	Räknar ner från 7 glas per dag
•	Klicka på siffran för att minska räknaren med ett
•	Klicka på 0 för att återställa till 7
•	Bakgrunden visar ett fyllt glas (blå) eller tomt glas (vitt) beroende på status
•	Vibrerar vid varje klick
•	Automatisk reset vid midnatt varje dag
•	1×1 storlek, tar minimal plats på hemskärmen

Teknisk stack
•	Språk: C#
•	Framework: .NET 10 (net10.0-android)
•	Plattform: Android (min API 24)
•	Verktyg: Visual Studio Code, Android Studio (emulator), adb

Projektstruktur
WaterCountdownWidget/   
  Widgets/     
    WaterCountdownWidgetProvider.cs   – Widgetens logik 
  Resources/     
    layout/widget_layout.xml          – Widgetens utseende   
    xml/widget_info.xml               – Widgetmetadata    
    drawable/water_full.png           – Fullt glas-ikon    
    drawable/water_empty.png          – Tomt glas-ikon   
  AndroidManifest.xml   
  WaterCountdownWidget.csproj

Installation
•	Klona projektet och öppna i VS Code
•	Kör: dotnet build
•	Anslut Android-enhet med USB-debugging aktiverat
•	Kör: dotnet publish -f net10.0-android -c Release
•	Installera: adb install -r <sökväg till APK>
•	Håll fingret på hemskärmen → Widgets → Water Countdown Widget

Byggt med fokus på enkelhet och hälsa
