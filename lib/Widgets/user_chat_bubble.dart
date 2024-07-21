
import 'package:flutter/material.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/constants.dart';

class UserChatBubble extends StatelessWidget {
  const UserChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsetsDirectional.all(10),
        margin: const EdgeInsetsDirectional.all(10),
        decoration: const BoxDecoration(
          color: kMessageColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: const CustomText(
          text: 'hello Iam a new user',
          color: Colors.white,
        ),
      ),
    );
  }
}
