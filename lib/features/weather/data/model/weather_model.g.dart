// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location()
    ..name = json['name'] as String
    ..region = json['region'] as String
    ..country = json['country'] as String
    ..lat = (json['lat'] as num).toDouble()
    ..lon = (json['lon'] as num).toDouble()
    ..tzId = json['tz_id'] as String
    ..localtimeEpoch = json['localtime_epoch'] as int
    ..localtime = json['localtime'] as String;
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'name': instance.name,
  'region': instance.region,
  'country': instance.country,
  'lat': instance.lat,
  'lon': instance.lon,
  'tz_id': instance.tzId,
  'localtime_epoch': instance.localtimeEpoch,
  'localtime': instance.localtime,
};

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition()..text = json['text'] as String;
}

Map<String, dynamic> _$ConditionToJson(Condition instance) =>
    <String, dynamic>{'text': instance.text};

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current()
    ..lastUpdated = json['last_updated'] as String
    ..tempC = (json['temp_c'] as num).toDouble()
    ..isDay = json['is_day'] as bool
    ..condition = Condition.fromJson(json['condition'] as Map<String, dynamic>)
    ..windKph = (json['wind_kph'] as num).toDouble()
    ..humidity = json['humidity'] as int
    ..cloud = json['cloud'] as int;
}

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
  'last_updated': instance.lastUpdated,
  'temp_c': instance.tempC,
  'is_day': instance.isDay,
  'condition': instance.condition.toJson(),
  'wind_kph': instance.windKph,
  'humidity': instance.humidity,
  'cloud': instance.cloud,
};

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return WeatherData()
    ..location = Location.fromJson(json['location'] as Map<String, dynamic>)
    ..current = Current.fromJson(json['current'] as Map<String, dynamic>);
}

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
      'current': instance.current.toJson(),
    };
