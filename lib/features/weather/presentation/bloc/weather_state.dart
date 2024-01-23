part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherError extends WeatherState {
  final String errorMessage;

  WeatherError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class WeatherLoaded extends WeatherState {
  final WeatherData weatherData;

  WeatherLoaded(this.weatherData);

  @override
  List<Object?> get props => [weatherData];
}
