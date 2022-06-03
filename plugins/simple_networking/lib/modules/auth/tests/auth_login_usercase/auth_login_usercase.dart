import 'package:simple_networking/modules/auth/models/auth_model.dart';

abstract class AuthLoginUserCase {
  Future<AuthModel> call();
}
