import 'package:berna_chat/modules/chat/chat_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Modular.to.pushNamed(ChatModule.moduleRoute);
          },
          child: const Text('LOGAR'),
        ),
      ),
    );
  }
}
