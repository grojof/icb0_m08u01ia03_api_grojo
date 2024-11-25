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

  Future<List<EpicImageMetadata>> getEpicImages({
    required EpicImageType type,
    required DateTime date,
  }) async {
    return apiNasaService.getEpicImages(type: type, date: date);
  }

  Future<List<EpicImageMetadata>> getEpicNaturalImages({
    required DateTime date,
  }) async {
    return apiNasaService.getEpicImages(
      type: EpicImageType.natural,
      date: date,
    );
  }

  String buildEpicImageUrl({
    required EpicImageMetadata image,
    required EpicImageType type,
    required EpicImageFormat format,
  }) {
    return apiNasaService.buildEpicImageUrl(
      image: image,
      format: format,
      type: type,
    );
  }

  Future<List<EpicImageMetadata>> getImagesForDate({
    required EpicImageType type,
    required DateTime date,
  }) async {
    return apiNasaService.getEpicImages(
      type: type,
      date: date,
    );
  }

  Future<List<EpicImageMetadata>> getImagesForDateRange({
    required EpicImageType type,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final List<EpicImageMetadata> images = [];

    for (var date = startDate;
        date.isBefore(endDate.add(const Duration(days: 1)));
        date = date.add(const Duration(days: 1))) {
      final dailyImages = await getImagesForDate(
        type: type,
        date: date,
      );
      images.addAll(dailyImages);
    }

    return images;
  }
}
