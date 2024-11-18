import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiNasaService {
  ApiNasaService({
    this.apiKey = 'vUl1fXbJxrXDJTkkQdNbcCYhWmK6L3fhljXAaXM4',
  });

  final String apiKey;

  /// Generic method to fetch data from the NASA API
  Future<Map<String, dynamic>> fetchData({
    required String endpoint,
    Map<String, String>? queryParams,
  }) async {
    // Construcción de la URL completa con los parámetros de consulta
    final uri = Uri.https(
      'api.nasa.gov',
      endpoint,
      {
        'api_key': apiKey,
        ...?queryParams,
      },
    );

    // Llamada a la API
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception('Error al obtener datos de la API');
    }
  }

  // Get Astronomy Picture of the Day
  Future<Map<String, dynamic>> getAstronomyPictureOfTheDay({
    String? date,
  }) {
    return fetchData(
      endpoint: '/planetary/apod',
      queryParams: {
        if (date != null) 'date': date,
      },
    );
  }

  /// Get Near Earth Objects
  /// Source: https://api.nasa.gov/
  Future<Map<String, dynamic>> getNearEarthObjects({
    String? startDate,
    String? endDate,
  }) {
    return fetchData(
      endpoint: '/neo/rest/v1/feed',
      queryParams: {
        if (startDate != null) 'start_date': startDate,
        if (endDate != null) 'end_date': endDate,
      },
    );
  }
}
