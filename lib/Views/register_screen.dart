import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/Views/chat_screen.dart';
import 'package:whats_app/Widgets/custom_button.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/Widgets/custom_text_form_feild.dart';
import 'package:whats_app/Widgets/loading_indicator.dart';
import 'package:whats_app/Widgets/snack_bar.dart';
import 'package:whats_app/constants.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  static String id = 'RegisterPage';

  final GlobalKey<FormState> myKey = GlobalKey();

  String? name, email, password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/Images/loginImage.jpeg'),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                            text: 'Register',
                            // fontFamily: 'Aguafina',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kPrimeryColor),
                      ],
                    ),
                    CustomTextFormField(
                      onChange: (data) {
                        name = data;
                      },
                      labelText: 'Name',
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
                      buttonText: 'Register',
                      buttonColor: kPrimeryColor,
                      width: double.infinity,
                      onPressed: () async {
                        try {
                          await userRegister();
                            LoadingIndicator();
                          if (context.mounted) {
                            Navigator.pushNamed(context, ChatScreen.id,arguments: email);
                          }
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'email-already-in-use') {
                            if (context.mounted) {
                              showSnackBar(context, 'email-already-in-use');
                            }
                          } else if (e.code == 'weak-password') {
                            if (context.mounted) {
                              showSnackBar(context, 'Weak password');
                            }
                          }
                        } catch (e) {
                          if (context.mounted) {
                            showSnackBar(context, 'Error try again');
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> userRegister() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
