import 'package:flutter/material.dart';
import 'package:whats_app/Views/chat_screen.dart';
import 'package:whats_app/Views/login_screen.dart';
import 'package:whats_app/Views/register_screen.dart';
import 'package:whats_app/Views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes:{
        LoginScreen.id: (context) => const LoginScreen() ,
        RegisterScreen.id: (context) =>  const RegisterScreen() ,
         WelcomeScreen.id: (context) => const WelcomeScreen() ,
         ChatScreen.id: (context) => const ChatScreen() ,
      },
      initialRoute: RegisterScreen.id,
    );
    }
    }
      