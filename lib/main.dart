import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App", style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, size: 32),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: const Icon(Icons.add_box, size: 32),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Yogyakarta",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 8),
            const Text(
              "Today",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            const Text(
              "28°C",
              style: TextStyle(fontSize: 72, fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            const SizedBox(height: 14),
            Center(
              child: Container(
                width: 170,
                height: 3,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              "Sunny",
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.ac_unit, size: 24, color: Colors.blue),
                SizedBox(width: 8),
                Text("5 km/h", style: TextStyle(fontSize: 20, color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(18),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Next 7 days",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      weatherColumn("Now", Icons.ac_unit, "28°C", Icons.wind_power, "10 km/h", Icons.umbrella, "0%"),
                      weatherColumn("17.00", Icons.ac_unit, "28°C", Icons.wind_power, "10 km/h", Icons.umbrella, "0%"),
                      weatherColumn("20.00", Icons.ac_unit, "28°C", Icons.wind_power, "10 km/h", Icons.umbrella, "0%"),
                      weatherColumn("23.00", Icons.ac_unit, "28°C", Icons.wind_power, "10 km/h", Icons.umbrella, "0%"),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Developed by: Abdurrafi Nur Fakhruddin",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget weatherColumn(String time, IconData icon, String temp, IconData windIcon, String windSpeed, IconData rainIcon, String rainPercent) {
    return Column(
      children: [
        SizedBox(
          width: 60, // Ukuran tetap
          child: Text(time, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
        ),
        SizedBox(
          width: 60, // Ukuran tetap
          child: Icon(icon, size: 26, color: Colors.blue),
        ),
        SizedBox(
          width: 60, // Ukuran tetap
          child: Text(temp, textAlign: TextAlign.center, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.normal, color: Colors.blue)),
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            SizedBox(
              width: 60,
              child: Icon(windIcon, size: 26, color: Colors.red),
            ),
            SizedBox(
              width: 60,
              child: Text(windSpeed, textAlign: TextAlign.center, style: const TextStyle(fontSize: 15, color: Colors.red)),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            SizedBox(
              width: 60,
              child: Icon(rainIcon, size: 26, color: Colors.black),
            ),
            SizedBox(
              width: 60,
              child: Text(rainPercent, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, color: Colors.black)),
            ),
          ],
        ),
      ],
    );
  }
}
