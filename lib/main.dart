import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/api/PostWeather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Погода в Пензе"),
          ),
          body: Weather()),
    );
  }
}

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  PostWeather? data;

  Future<String> getData() async {
    var response = await http.get(
      Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?id=511565&units=metric&lang=ru&appid=87af9e430e18ed3d99612325416fd8bd"),
    );

    setState(() {
      data = PostWeather.fromJson(json.decode(response.body));
    });
    return "Success";
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    if (data == null)
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade600])),
        alignment: Alignment.center,
        child: Container(
          child: Text(
            "Please wait",
            style: TextStyle(fontSize: 50, color: Colors.grey),
          ),
        ),
      );
    else
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade600])),
        child: Container(
          height: 350,
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Температура " + data!.main.temp.toString() + " °C",
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
              Image.network("https://openweathermap.org/img/wn/" +
                  data!.weather[0].icon +
                  "@2x.png"),
              Text(
                data!.weather[0].description,
                style: TextStyle(fontSize: 30, color: Colors.grey.shade700),
              ),
              Text(
                "Скорость ветра: " + data!.wind.speed.toString() + " м/с",
                style: TextStyle(fontSize: 30, color: Colors.grey.shade700),
              ),
              Text(
                "Влажность: " + data!.main.humidity.toString() + "%",
                style: TextStyle(fontSize: 30, color: Colors.grey.shade700),
              )
            ],
          ),
        ),
      );
  }
}
