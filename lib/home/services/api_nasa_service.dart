import 'dart:convert';
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
      throw Exception('Error al obtener datos de la API');
    }
  }

  /// Get Astronomy Picture of the Day
  Future<AstronomyPictureOfTheDayModel> getAstronomyPictureOfTheDay({
    DateTime? date,
  }) async {
    // Format date to 'yyyy-MM-dd'
    final formattedDate =
        date != null ? DateFormat('yyyy-MM-dd').format(date) : null;

    // Fetch data from the API
    final response = await fetchData(
      endpoint: '/planetary/apod',
      queryParams: {
        if (formattedDate != null) 'date': formattedDate,
      },
    );

    // Parse response to model
    return AstronomyPictureOfTheDayModel.fromJson(
      response as Map<String, dynamic>,
    );
  }

  /// Get EPIC metadata or images
  Future<List<EpicImageMetadata>> getEpicImages({
    required EpicImageType type,
    DateTime? date,
    String query = 'natural',
  }) async {
    // Format date to 'yyyyMMdd'
    final formattedDate =
        date != null ? DateFormat('yyyyMMdd').format(date) : null;

    final endpoint = date != null
        ? '/EPIC/api/$query/date/$formattedDate'
        : '/EPIC/api/$query';

    final response = await fetchData(endpoint: endpoint);

    if (response is List) {
      return response
          .map(
            (json) => EpicImageMetadata.fromJson(json as Map<String, dynamic>),
          )
          .toList();
    } else {
      throw Exception(
          'Error inesperado: se esperaba una lista, pero se recibió un ${response.runtimeType}');
    }
  }

  /// Build and return a specific image URL
  Future<String> getImageUrl({
    required EpicImageType type,
    required EpicImageFormat format,
    required EpicImageMetadata image,
  }) async {
    return buildEpicImageUrl(
      type: type,
      image: image,
      format: format,
    );
  }

  /// Build Image URL from EPIC Metadata
  String buildEpicImageUrl({
    required EpicImageMetadata image,
    required EpicImageType type,
    required EpicImageFormat format,
  }) {
    // Extraer solo la parte de la fecha sin la hora
    final dateOnly = image.date.split(' ')[0];
    final dateParts = dateOnly.split('-'); // YYYY-MM-DD -> [YYYY, MM, DD]

    if (dateParts.length != 3) {
      throw ArgumentError('Invalid date format in metadata: ${image.date}');
    }

    // Asegurar que thumbs utilicen .jpg
    final extension = format == EpicImageFormat.thumbs ? 'jpg' : format.name;

    // Construir la URL
    return Uri.https(
      'epic.gsfc.nasa.gov',
      '/archive/${type.name}/${dateParts[0]}/${dateParts[1]}/${dateParts[2]}/${format.name}/${image.image}.$extension',
    ).toString();
  }
}
