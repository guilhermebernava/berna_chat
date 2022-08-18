import 'package:berna_chat/modules/chat/views/chat_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends Module {
  static const moduleRoute = '/chat/';
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ChatScreen(),
        ),
      ];
}
