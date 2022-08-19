import 'package:berna_chat/core/services/util_services.dart';
import 'package:berna_chat/core/themes/app_colors.dart';
import 'package:berna_chat/core/themes/app_text_style.dart';
import 'package:berna_chat/core/widgets/safe_button/safe_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = UtilServices.mediaQuery(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Welcome To',
                  style: AppTextStyle.appFontInter(
                    color: AppColors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Berna Chat',
                  style: AppTextStyle.appFontInter(
                    color: AppColors.primary,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SafeButton(
                  size: size,
                  onTap: () {
                    print('vagabunda');
                  },
                  child: Text(
                    'Login',
                    style: AppTextStyle.appFontInter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SafeButton(
                  color: Colors.transparent,
                  size: size,
                  onTap: () {
                    print('vagabunda');
                  },
                  child: Text(
                    'Sign In',
                    style: AppTextStyle.appFontInter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
