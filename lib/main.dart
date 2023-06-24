import 'package:flutter/material.dart';
import 'package:weather_app/views/additional_information.dart';
import 'package:weather_app/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'Weather App',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            currentWeather(Icons.wb_sunny_rounded, "26.3", "Agra"),
            const SizedBox(
              height: 60.0,
            ),
            const Text(
              "Additional Information",
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0xdd212121),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 20.0,
            ),
            additionalInformation("24","2","1014","24.6"),
          ],
        ),
      ),
    );
  }
}