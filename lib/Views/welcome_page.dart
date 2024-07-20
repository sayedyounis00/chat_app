import 'package:flutter/material.dart';
import 'package:whats_app/Widgets/custom_button.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/welcomeImage.png'),
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
              const CustomButton(
                buttonText: 'Login',
                buttonColor: kMessageColor,
              ),
              const CustomButton(
                buttonText: 'Register',
                buttonColor: Colors.white,
                TextColor: kMessageColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
