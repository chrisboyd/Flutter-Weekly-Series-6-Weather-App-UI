import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_6/components/custom_app_bar.dart';
import 'package:weather_app_6/constants.dart';
import 'package:weather_app_6/screens/home_screen/components/hourly_weather_bar.dart';
import 'package:weather_app_6/screens/home_screen/components/weather_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text(
                        'Bandung,',
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Indonesia',
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  WeatherCard(),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            HourlyWeatherBar(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
