// ignore_for_file: prefer_final_fields
import 'package:berna_chat/core/models/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = AbstractUserStore with _$UserStore;

abstract class AbstractUserStore with Store {
  final String loginRoute;

  AbstractUserStore(this.loginRoute);

  @observable
  UserModel _user = UserModel();

  void login(String email, String password) {}

  void logout() {
    _user.logout();
    Modular.to.navigate(loginRoute);
  }
}
