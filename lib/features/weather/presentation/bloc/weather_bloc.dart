import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/model/weather_model.dart';

import '../../data/repository/weather_repository.dart';


part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherData getWeatherData;

  WeatherBloc(this.getWeatherData) : super(WeatherInitial());

  Stream<WeatherState> mapEventToState(
      WeatherEvent event,
      ) async* {
    if (event is GetWeather) {
      yield WeatherLoading();
      final result = await getWeatherData(NoParams());
      result.either(
            (failure) {
          add(WeatherErrorEvent(failure.message));
        },
            (weatherData) {
          add(WeatherLoadedEvent(weatherData));
        },
      );
    }
  }
}
