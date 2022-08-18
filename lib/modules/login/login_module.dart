import 'package:berna_chat/modules/login/controller/login_controller.dart';
import 'package:berna_chat/modules/login/view/login_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  static const moduleRoute = '/login/';
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => LoginController(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const LoginScreen(),
        ),
      ];
}
