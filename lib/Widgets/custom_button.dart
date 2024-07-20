import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.buttonText, required this.buttonColor,  this.TextColor,
  });
  final String buttonText;
  final Color buttonColor;
  final Color? TextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      height: 50,
      width: 300,
      decoration: BoxDecoration(
    border: Border.all(color:kMessageColor ),
    borderRadius: const BorderRadius.all(
        Radius.circular(150)
  ),),
      child: TextButton(
        style:  ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(buttonColor)),
        onPressed: () {},
        child:  Text(
          buttonText,
          style:  TextStyle(color: TextColor??Colors.white),
        ),
      ),
    );
  }
}
