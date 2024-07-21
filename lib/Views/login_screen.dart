import 'package:flutter/material.dart';
import 'package:whats_app/Views/chat_screen.dart';
import 'package:whats_app/Widgets/custom_button.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/Widgets/custom_text_form_feild.dart';
import 'package:whats_app/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String id = 'loginPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Images/loginImage.jpeg'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                        text: 'Login',
                        // fontFamily: 'Aguafina',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kPrimeryColor),
                  ],
                ),
                 CustomTextFormField(
                  onChange: (data) {},
                  labelText: 'Name',
                ),
                 CustomTextFormField(
                  onChange: (data) {},
                  labelText: 'Email',
                ),
                 CustomTextFormField(
                  onChange: (data) {},
                  labelText: 'Password',
                  obsecureText: true,
                ),
                CustomButton(
                  buttonText: 'Login',
                  buttonColor: kPrimeryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, ChatScreen.id);
                  },
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
