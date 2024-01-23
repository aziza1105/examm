import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/weather/data/data_source/weather_data_source.dart';


import '../../features/weather/data/repository/weather_repository.dart';
import '../../features/weather/presentation/bloc/weather_bloc.dart';

final serviceLocator = GetIt.I;

Future<void> setupLocator() async {

  serviceLocator.registerLazySingleton(() => Dio());

  serviceLocator.registerSingletonAsync(() async => await SharedPreferences.getInstance());


  serviceLocator.registerLazySingleton(() => WeatherDataSource(serviceLocator<Dio>()));


  serviceLocator.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(serviceLocator<WeatherDataSource>()));


  serviceLocator.registerLazySingleton(() => GetWeatherData(serviceLocator<WeatherRepository>()));


  serviceLocator.registerFactory(() => WeatherBloc(serviceLocator<GetWeatherData>()));
}
