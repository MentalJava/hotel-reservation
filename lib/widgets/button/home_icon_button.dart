import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onClickEvent;
  const HomeIconButton({
    super.key,
    required this.icon,
    this.onClickEvent,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClickEvent,
      icon: icon,
    );
  }
}
