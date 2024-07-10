import 'package:flutter/material.dart';
import 'package:hotel_reservation/widgets/card_rayout/build_card.dart';

class GridviewRayout extends StatelessWidget {
  const GridviewRayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
        childAspectRatio: 8.0 / 10,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BuildCard();
      },
    );
  }
}
