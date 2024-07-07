import 'package:flutter/material.dart';

class HomeDrawerButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final Function()? onClickEvent;
  const HomeDrawerButton({
    super.key,
    required this.title,
    required this.icon,
    this.onClickEvent,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(padding: const EdgeInsets.only(right: 20), child: icon),
      title: Text(title),
      titleTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.grey[600],
      ),
      onTap: onClickEvent,
    );
  }
}
