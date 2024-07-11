import 'package:flutter/material.dart';

Widget gridRatingStar(int starCount) {
  List<Widget> stars = [];
  for (int i = 0; i < starCount; i++) {
    stars.add(
      Transform.translate(
        offset: const Offset(32, 0),
        child: const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
          size: 15,
        ),
      ),
    );
  }
  return Row(children: stars);
}
