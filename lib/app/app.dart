import 'package:berna_chat/core/themes/app_colors.dart';
import 'package:berna_chat/core/themes/app_text_style.dart';
import 'package:berna_chat/modules/login/login_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(LoginModule.moduleRoute);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      title: 'Berna Chat',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: AppTextStyle.appFontInter(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: AppTextStyle.appFontInter(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: AppTextStyle.appFontInter(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: AppTextStyle.appFontInter(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: AppTextStyle.appFontInter(),
          bodySmall: AppTextStyle.appFontInter(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        scaffoldBackgroundColor: AppColors.black,
        primarySwatch: AppColors.materialColor,
        iconTheme: const IconThemeData(
          color: AppColors.white,
          size: 30,
        ),
      ),
    );
  }
}
