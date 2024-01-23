
import '../../../../../core/either/either.dart';
import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';



import '../data_source/weather_data_source.dart';
import '../model/weather_model.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherData>> getWeatherData();
}

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource dataSource;

  WeatherRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, WeatherData>> getWeatherData() async {
    return await dataSource.getWeatherData();
  }
}

class GetWeatherData extends UseCase<WeatherData, NoParams> {
  final WeatherRepository repository;

  GetWeatherData(this.repository);

  @override
  Future<Either<Failure, WeatherData>> call(NoParams params) async {
    return await repository.getWeatherData();
  }
}
