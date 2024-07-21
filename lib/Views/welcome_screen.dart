import 'package:flutter/material.dart';
import 'package:whats_app/Widgets/custom_button.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/constants.dart';

import 'login_screen.dart';
import 'register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static String id = 'ًWelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Images/welcomeImage.png'),
              const CustomText(
                text: 'Hello',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Aguafina',
              ),
              Container(
                alignment: AlignmentDirectional.center,
                width: 400,
                child: const Column(
                  children: [
                    CustomText(
                      text: 'Pull up a virtual chair,',
                      fontFamily: 'Akshar',
                    ),
                    CustomText(
                      text: 'let’s dive into some delightful conversations',
                      fontFamily: 'Akshar',
                    )
                  ],
                ),
              ),
              CustomButton(
                buttonText: 'Login',
                buttonColor: kMessageColor,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              CustomButton(
                buttonText: 'Register',
                buttonColor: Colors.white,
                textColor: kMessageColor,
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
