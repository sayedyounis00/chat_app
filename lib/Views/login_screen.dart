import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/Views/chat_screen.dart';
import 'package:whats_app/Widgets/custom_button.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/Widgets/custom_text_form_feild.dart';
import 'package:whats_app/Widgets/loading_indicator.dart';
import 'package:whats_app/Widgets/snack_bar.dart';
import 'package:whats_app/constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static String id = 'loginPage';
  late String email, password;

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
                  onChange: (data) {
                    email = data;
                  },
                  labelText: 'Email',
                ),
                CustomTextFormField(
                  onChange: (data) {
                    password = data;
                  },
                  labelText: 'Password',
                  obsecureText: true,
                ),
                CustomButton(
                  width: double.infinity,
                  buttonText: 'Login',
                  buttonColor: kPrimeryColor,
                  onPressed: () async {
                    try {
                      await UserLogin();
                      Navigator.pushNamed(context, ChatScreen.id);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        if (context.mounted) {
                          showSnackBar(context, 'user-not-found');
                        }
                      } else if (e.code == 'wrong-password') {
                        if (context.mounted) {
                          showSnackBar(context, 'wrong - password');
                        }
                      }
                    } catch (e) {
                      if (context.mounted) showSnackBar(context, 'error');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> UserLogin() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
}
