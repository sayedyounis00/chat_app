import 'package:flutter/material.dart';

class SendingForm extends StatelessWidget {
  const SendingForm({
    super.key,
    required this.onSubmitted, required this.controller,
  });
  final Function(String) onSubmitted;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        decoration: const InputDecoration(
          hintText: 'Typre here.....',
          prefixIcon: Icon(Icons.camera_alt_outlined),
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
