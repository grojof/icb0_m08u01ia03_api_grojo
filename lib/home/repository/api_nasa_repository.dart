import 'package:flutter/material.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/services/services.dart';

final apiNasaService = ApiNasaService();

class ApiNasaRepository {
  Future<List<AstronomyPictureOfTheDayModel>> fetchApodImagesByDateRange({
    required DateTimeRange dateRange,
  }) async {
    return apiNasaService.fetchAstronomyPictureOfTheDayByDateRange(
      dateRange: dateRange,
    );
  }
}
