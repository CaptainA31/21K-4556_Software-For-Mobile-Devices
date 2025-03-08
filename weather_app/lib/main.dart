import 'package:flutter/material.dart';
import 'package:weather_app/weather_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Weather? weatherData;
  final String apiUrl =
      "https://api.openweathermap.org/data/2.5/weather?lat=24.8607&lon=67.0011&appid=90ef77f837c1b1896c3808989790dc43&units=metric";

  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        setState(() {
          weatherData = Weather.fromJson(jsonData);
        });
      } else {
        throw Exception("Failed to load weather data");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather Info")),
      body: weatherData == null
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  ListTile(
                    title: Text("City"),
                    subtitle: Text(weatherData!.city),
                  ),
                  ListTile(
                    title: Text("Description"),
                    subtitle: Text(weatherData!.description),
                  ),
                  ListTile(
                    title: Text("Temperature"),
                    subtitle: Text("${weatherData!.currentTemp}°C"),
                  ),
                  ListTile(
                    title: Text("Feels Like"),
                    subtitle: Text("${weatherData!.feelsLike}°C"),
                  ),
                  ListTile(
                    title: Text("Humidity"),
                    subtitle: Text("${weatherData!.humidity}%"),
                  ),
                  ListTile(
                    title: Text("Wind Speed"),
                    subtitle: Text("${weatherData!.windSpeed} m/s"),
                  ),
                  ListTile(
                    title: Text("Visibility"),
                    subtitle: Text("${weatherData!.visibility} meters"),
                  ),
                  ListTile(
                    title: Text("Sunrise"),
                    subtitle: Text(
                        "${DateTime.fromMillisecondsSinceEpoch(weatherData!.sunrise * 1000)}"),
                  ),
                  ListTile(
                    title: Text("Sunset"),
                    subtitle: Text(
                        "${DateTime.fromMillisecondsSinceEpoch(weatherData!.sunset * 1000)}"),
                  ),
                ],
              ),
            ),
    );
  }
}
