import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset('assets/welcomeImage.png'),
            const Text('',style: TextStyle(
              fontSize:20 ,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}