import 'package:flutter/material.dart';

class SignTextButton extends StatelessWidget {
  final String title;
  final double fontsize;
  final Function()? onClickEvent;

  const SignTextButton({
    super.key,
    required this.title,
    required this.fontsize,
    this.onClickEvent,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClickEvent,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: fontsize,
        ),
      ),
    );
  }
}
