import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.obsecureText,
    required this.onChange,
  });
  final String labelText;
  final bool? obsecureText;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        controller: TextEditingController(),
        // validator: (value) {
        //   if (value==null||value.isEmpty) {
        //     return 'this Feild is Required';
        //   }
        //   return null;
        // },
        onChanged: onChange,
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 20),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kPrimeryColor),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
      ),
    );
  }
}
