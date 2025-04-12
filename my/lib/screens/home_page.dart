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

  void _getWeather() async {
    try {
      _weather = await WeatherService().getWeatherData();
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    _getWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ListView.builder(
      itemCount: _weather.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    )));
  }
}
