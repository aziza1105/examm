import 'package:exammm/features/weather/data/repository/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/injector/injector.dart';

import 'features/weather/presentation/bloc/weather_bloc.dart';
import 'features/weather/presentation/widgets/home_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BlocProvider(
              create: (context) => WeatherBloc(
                serviceLocator<GetWeatherData>(),
              ),
              child: WeatherScreen(),
            );
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}