import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class Weather {
  Weather({
    required this.city,
    required this.mainData,
    required this.weather,
    required this.wind,
    required this.visibility,
    required this.sys,
  });

  @JsonKey(name: 'name')
  String city;

  @JsonKey(name: 'weather')
  List<dynamic> weather;

  /// Extracts 'description' from the first item in the 'weather' list
  String get description =>
      weather.isNotEmpty ? weather[0]['description'] : 'N/A';

  @JsonKey(name: 'main')
  Map<String, dynamic> mainData;

  double get currentTemp => (mainData['temp'] as num).toDouble();
  double get feelsLike => (mainData['feels_like'] as num).toDouble();
  double get highTemp => (mainData['temp_max'] as num).toDouble();
  double get lowTemp => (mainData['temp_min'] as num).toDouble();
  int get pressure => mainData['pressure'];
  int get humidity => mainData['humidity'];

  @JsonKey(name: 'wind')
  Map<String, dynamic> wind;

  double get windSpeed => (wind['speed'] as num).toDouble();
  int get windDirection => wind['deg'];

  @JsonKey(name: 'visibility')
  int visibility;

  @JsonKey(name: 'sys')
  Map<String, dynamic> sys;

  int get sunrise => sys['sunrise'];
  int get sunset => sys['sunset'];

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

//WeatherFromJson this method will be generated via build runner
