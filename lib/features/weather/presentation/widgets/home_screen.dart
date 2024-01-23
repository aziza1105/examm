
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../assets/colors/colors.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherBloc(),
        child: Builder(builder: (context) {
          return Scaffold(
              body: Stack(
                            children: [
                              Center(
                                child: Image.asset(
                                  AppImages.background,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          snow_template,
                                          snow_template,
                                        ],
                                      )),
                                  child: Text(
                                    '${weather.humidity}%',
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                        return SizedBox();
                      })
                ],
              ));
        }));
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../data/model/weather_model.dart';
// import '../bloc/weather_bloc.dart';
//
// class WeatherScreen extends StatefulWidget {
//   final WeatherData weatherData;
//
//   const WeatherScreen({Key? key, required this.weatherData}) : super(key: key);
//
//   @override
//   State<WeatherScreen> createState() => _WeatherScreenState();
// }
//
// class _WeatherScreenState extends State<WeatherScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<WeatherBloc, WeatherState>(
//       builder: (context, state) {
//         return Scaffold(
//           body: Stack(
//             children: [
//               Center(
//                 child: Container(
//                   height: double.infinity,
//                   width: double.infinity,
//
//
//
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [Colors.blue, Colors.lightBlue],
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // Time
//                         Text(
//                           'Last Updated: ${widget.weatherData.current.lastUpdated}',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 20),
//
//                         // Temperature and Icon
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               '${widget.weatherData.current.tempC}°C',
//                               style: TextStyle(
//                                 fontSize: 36,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             // Icon widget here
//                           ],
//                         ),
//                         SizedBox(height: 20),
//
//                         // Condition and Location
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Condition: ${widget.weatherData.current.condition.text}',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             SizedBox(width: 20),
//                             Text(
//                               'Location: ${widget.weatherData.location.region}, ${widget.weatherData.location.country}',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 20),
//
//                         // Humidity, Cloud, Wind Speed
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           padding: EdgeInsets.all(16),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Humidity',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     '${widget.weatherData.current.humidity}%',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Cloud',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     '${widget.weatherData.current.cloud}%',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   Text(
//                                     'Wind Speed',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     '${widget.weatherData.current.windKph} km/h',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
