import 'package:dio/dio.dart';
import '../../../utils/dio_client.dart';

class UserRepository {
  final DioClient dioClient;

  UserRepository({required this.dioClient});

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await dioClient.post('/login', {
      'email': email,
      'password': password,
    });
    return response.data;
  }

  Future<Map<String, dynamic>> register(String email, String password) async {
    final response = await dioClient.post('/register', {
      'email': email,
      'password': password,
    });
    return response.data;
  }
}
