import 'package:intl/intl.dart';

class ApiNasaRepository {
  Future<String> getAstronomyPictureOfTheDay(DateTime date) async {
    // Parse date to string format YYYY-MM-DD
    final formattedDate = DateFormat('yyyy-MM-dd').format(date);

    return '';
  }
}
