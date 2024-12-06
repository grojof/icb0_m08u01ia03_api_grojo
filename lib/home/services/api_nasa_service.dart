import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:icb0_m08u01ia03_api_grojo/home/models/models.dart';
import 'package:intl/intl.dart';

class ApiNasaService {
  ApiNasaService({
    this.apiKey = 'vUl1fXbJxrXDJTkkQdNbcCYhWmK6L3fhljXAaXM4',
  });

  final String apiKey;

  /// Generic method to fetch data from the NASA API
  Future<dynamic> fetchData({
    required String endpoint,
    Map<String, String>? queryParams,
  }) async {
    // Build URI with query parameters
    final uri = Uri.https(
      'api.nasa.gov',
      endpoint,
      {
        'api_key': apiKey,
        ...?queryParams,
      },
    );

    // Fetch data from the API
    final response = await http.get(uri);

    // Parse response
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Error al obtenir les dades de la API');
    }
  }

  /// Get Astronomy Pictures of the Day for a date range
  Future<List<AstronomyPictureOfTheDayModel>>
      fetchAstronomyPictureOfTheDayByDateRange({
    required DateTimeRange dateRange,
  }) async {
    // Format dates to 'yyyy-MM-dd'
    final formattedStartDate = DateFormat('yyyy-MM-dd').format(dateRange.start);
    final formattedEndDate = DateFormat('yyyy-MM-dd').format(dateRange.end);

    // Fetch data from the API
    final response = await fetchData(
      endpoint: '/planetary/apod',
      queryParams: {
        'start_date': formattedStartDate,
        'end_date': formattedEndDate,
      },
    );

    // Parse response as a list of models
    if (response is List) {
      return response
          .map(
            (json) => AstronomyPictureOfTheDayModel.fromJson(
              json as Map<String, dynamic>,
            ),
          )
          .toList();
    } else {
      throw Exception(
        'Error: La reposta no conté una llista: ${response.runtimeType}',
      );
    }
  }
}
