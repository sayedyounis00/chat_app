import 'package:flutter/material.dart';
import 'package:whats_app/Models/message_model.dart';
import 'package:whats_app/Widgets/custom_text.dart';

class UserTwoChatBubble extends StatelessWidget {
  const UserTwoChatBubble({
    super.key, required this.userMessage,
  });
  final MessageModel userMessage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsetsDirectional.all(10),
        margin: const EdgeInsetsDirectional.all(10),
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child:  CustomText(
          text: userMessage.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
