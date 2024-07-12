import 'package:flutter/material.dart';

Widget listHotelRating(int starCount) {
  List<Widget> stars = [];
  for (int i = 0; i < starCount; i++) {
    stars.add(
      Transform.translate(
        offset: const Offset(-5, 0),
        child: const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
          size: 20,
        ),
      ),
    );
  }
  return Row(children: stars);
}
