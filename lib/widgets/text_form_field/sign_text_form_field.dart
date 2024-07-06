import 'package:flutter/material.dart';

class SignTextFormField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final bool isHideText;

  const SignTextFormField(
      {super.key,
      required this.controller,
      required this.name,
      required this.isHideText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $name';
          }
          return null;
        },
        obscureText: isHideText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            hintText: name,
            hintStyle: const TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
