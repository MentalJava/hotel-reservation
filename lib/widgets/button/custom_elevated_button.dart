import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final double fontsize;
  final Function()? onClickEvent;

  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.fontsize,
    this.onClickEvent,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onClickEvent;
      },
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: fontsize),
      ),
    );
  }
}
