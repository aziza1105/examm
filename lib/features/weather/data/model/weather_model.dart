import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class Location {
  late String name;
  late String region;
  late String country;
  late double lat;
  late double lon;
  late String tzId;
  late int localtimeEpoch;
  late String localtime;

  Location();

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Condition {
  late String text;

  Condition();

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class Current {
  late String lastUpdated;
  late double tempC;
  late bool isDay;
  late Condition condition;
  late double windKph;
  late int humidity;
  late int cloud;

  Current();

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class WeatherData {
  late Location location;
  late Current current;

  WeatherData();

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}
