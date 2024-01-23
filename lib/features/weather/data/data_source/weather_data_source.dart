import 'package:dio/dio.dart';
import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';
import '../../data/model/weather_model.dart';

class WeatherDataSource {
  final Dio dio;

  WeatherDataSource(this.dio);

  Future<Either<Failure, WeatherData>> getWeatherData() async {
    try {
      final response = await dio.get(' http://api.weatherapi.com/v1/current.json?key=e76d154ceb2a4e05a2c62513241901&q=Tashkent&aqi=no');
      final data = WeatherData.fromJson(response.data);
      return Right(data);
    } on DioError catch (e) {
      return Left(ServerFailure(
          message: e.message ?? 'Something went wrong',
          code: e.response?.statusCode ?? 0));
    } catch (e) {
      return Left(ServerFailure(message: 'Unexpected error occurred'));
    }
  }
}
