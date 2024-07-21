import 'package:flutter/material.dart';
import 'package:whats_app/Widgets/sending_form.dart';
import 'package:whats_app/Widgets/user_bar.dart';
import 'package:whats_app/Widgets/user_chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static String id = 'ChatScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors
            .grey, // Image.asset('assets/Images/scaffoldIamge.jpg').color,
        body: Column(
          children: [
            const UserBar(),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const UserChatBubble();
                },
              ),
            ),
            const SendingForm(),
          ],
        ),
      ),
    );
  }
}
