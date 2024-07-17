import 'package:flutter/material.dart';

class HomeDrawerButton extends StatelessWidget {
  final String title;
  final Widget icon;
  final Function()? onClickEvent;
  final bool? isSelected;

  const HomeDrawerButton({
    super.key,
    required this.title,
    required this.icon,
    this.onClickEvent,
    this.isSelected,
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
      selectedColor: Colors.blue[200],
    );
  }
}
