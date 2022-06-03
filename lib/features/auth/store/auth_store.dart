import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

part 'auth_store.g.dart';

class AuthStore extends _AuthStoreBase with _$AuthStore {
  AuthStore();

  static AuthStore of(BuildContext context) =>
      Provider.of<AuthStore>(context, listen: false);
}

abstract class _AuthStoreBase with Store {
  _AuthStoreBase() {}
}
