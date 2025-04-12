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
            final WeatherModel weather = _weather[index];
            return Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Image.network(weather.ikon,
                      width: 100, height: 100, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 25),
                    child: Text(
                      "${weather.gun}\n ${weather.durum.toUpperCase()} ${weather.derece}°",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gündüz: ${weather.derece}°",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text("Gece: ${weather.gece}°",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
