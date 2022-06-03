import 'package:simple_networking/modules/auth/models/auth_model.dart';
import 'package:simple_networking/modules/auth/repositories/auth_repository.dart';
import 'package:simple_networking/modules/auth/tests/auth_login_usercase/auth_login_usercase.dart';

abstract class AuthLoginUserCaseImp implements AuthLoginUserCase {
  AuthLoginUserCaseImp(this._repository);

  final AuthRepository _repository;

  @override
  Future<AuthModel> call() => _repository.fetchSomeData();
}
