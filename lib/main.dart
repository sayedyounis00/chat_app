import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/Views/chat_screen.dart';
import 'package:whats_app/Views/login_screen.dart';
import 'package:whats_app/Views/register_screen.dart';
import 'package:whats_app/Views/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
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
        RegisterScreen.id: (context) =>   RegisterScreen() ,
         WelcomeScreen.id: (context) => const WelcomeScreen() ,
         ChatScreen.id: (context) => const ChatScreen() ,
      },
      initialRoute: RegisterScreen.id,
    );
    }
    }
      