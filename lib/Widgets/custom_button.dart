import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    this.textColor,
    required this.onPressed,
    this.height,
    this.width,
  });
  final String buttonText;
  final Color buttonColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      height: height ?? 50,
      width: width ?? 300,
      decoration: BoxDecoration(
        border: Border.all(color: kMessageColor),
        borderRadius: const BorderRadius.all(Radius.circular(150)),
      ),
      child: TextButton(
        style:
            ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
