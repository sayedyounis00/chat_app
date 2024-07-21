
import 'package:flutter/material.dart';

class SendingForm extends StatelessWidget {
  const SendingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all( 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Typre here.....',
          prefixIcon:Icon(Icons.camera_alt_outlined) ,
          suffixIcon: Icon(Icons.send),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
