import 'package:flutter/material.dart';
import 'package:my/model/weather_model.dart';
import 'package:my/services/weather_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<WeatherModel> _weather = [];

  void getWeather() async {
    try {
      final weather = await WeatherService().getWeatherData();
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [],
      ),
    ));
  }
}
