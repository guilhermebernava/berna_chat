import 'package:berna_chat/core/stores/user_store.dart';
import 'package:berna_chat/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../modules/chat/chat_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => UserStore(''),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          LoginModule.moduleRoute,
          module: LoginModule(),
        ),
        ModuleRoute(
          ChatModule.moduleRoute,
          module: ChatModule(),
        ),
      ];
}
