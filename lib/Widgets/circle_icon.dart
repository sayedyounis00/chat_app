
import 'package:flutter/material.dart';

class CirculeIcon extends StatelessWidget {
  const CirculeIcon({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(
          icon,
          color: Colors.grey.shade400,
          size: 30,
        ),
      ),
    );
  }
}
