import 'package:berna_chat/app/app.dart';
import 'package:berna_chat/app/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const App(),
    ),
  );
}
