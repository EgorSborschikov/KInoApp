import 'dio_client.dart';

Future<Map<String, dynamic>> fetchData(DioClient dioClient, String url) async {
  final response = await dioClient.get(url);
  if (response.statusCode == 200) {
    return response.data;
  } else {
    throw Exception('Failed to load data');
  }
}

String formatDate(DateTime date) {
  return '${date.year}-${date.month}-${date.day}';
}