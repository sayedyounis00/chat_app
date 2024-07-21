
import 'package:flutter/material.dart';
import 'package:whats_app/Widgets/circle_icon.dart';
import 'package:whats_app/Widgets/custom_text.dart';
import 'package:whats_app/Widgets/status.dart';

class UserBar extends StatelessWidget {
  const UserBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/Images/youngman.jpg'),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Abdulrahman',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Akshar',
                  fontSize: 25,
                ),
                Row(children: [
                  Status(),
                  CustomText(
                    text: 'online',
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ]),
              ],
            ),
            SizedBox(
              width: 70,
            ),
            CirculeIcon(
              icon: Icons.videocam_outlined,
            ),
            CirculeIcon(icon: Icons.call_outlined),
          ],
        ),
      ),
    );
  }
}
