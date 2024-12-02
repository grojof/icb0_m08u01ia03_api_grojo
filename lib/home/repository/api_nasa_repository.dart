import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/services/services.dart';

final apiNasaService = ApiNasaService();

class ApiNasaRepository {
  Future<AstronomyPictureOfTheDayModel> getAstronomyPictureOfTheDay({
    DateTime? date,
  }) async {
    return apiNasaService.getAstronomyPictureOfTheDay(date: date);
  }

  Future<List<AstronomyPictureOfTheDayModel>> getApodImagesForDateRange({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return apiNasaService.getAstronomyPictureOfTheDayByDateRange(
      startDate: startDate,
      endDate: endDate,
    );
  }
}
