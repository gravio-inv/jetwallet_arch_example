import 'package:injectable/injectable.dart';
import 'package:simple_networking/modules/auth/data_sources/auth_data_sources.dart';
import 'package:simple_networking/modules/auth/models/auth_model.dart';

@LazySingleton()
class AuthRepository {
  AuthRepository(this._authDataSource);

  final AuthDataSources _authDataSource;

  Future<AuthModel> fetchSomeData() async {
    try {
      final data = await _authDataSource.postSomeRequest();

      return AuthModel.fromJson(data.data);
    } catch (e) {
      rethrow;
    }
  }
}
