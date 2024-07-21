import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/Widgets/custom_button.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/Widgets/custom_text_form_feild.dart';
import 'package:whats_app/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String id = 'RegisterPage';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    onPressed: () {
                      if(myKey.currentState!.validate()){
                        
                      }
                    },
                  ),
                ],
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
