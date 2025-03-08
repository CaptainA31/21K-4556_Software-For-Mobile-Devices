// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      city: json['name'] as String,
      mainData: json['main'] as Map<String, dynamic>,
      weather: json['weather'] as List<dynamic>,
      wind: json['wind'] as Map<String, dynamic>,
      visibility: (json['visibility'] as num).toInt(),
      sys: json['sys'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'name': instance.city,
      'weather': instance.weather,
      'main': instance.mainData,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'sys': instance.sys,
    };
