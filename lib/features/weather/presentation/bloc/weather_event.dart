part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object?> get props => [];
}

class GetWeather extends WeatherEvent {}

class WeatherErrorEvent extends WeatherEvent {
  final String errorMessage;

  WeatherErrorEvent(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class WeatherLoadedEvent extends WeatherEvent {
  final WeatherData weatherData;

  WeatherLoadedEvent(this.weatherData);

  @override
  List<Object?> get props => [weatherData];
}
