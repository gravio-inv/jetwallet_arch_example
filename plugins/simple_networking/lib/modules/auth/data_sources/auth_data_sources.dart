import 'package:dio/dio.dart';

class AuthDataSources {
  AuthDataSources(this._dio);

  final Dio _dio;

  Future<Response> postSomeRequest() async {
    const _path = '/url/auth';

    try {
      return await _dio.request(
        _path,
        queryParameters: {'test': 'test'},
        options: Options(
          method: 'GET',
          contentType: 'application/json',
        ),
      );
    } catch (e) {
      rethrow;
    }
  }
}
