import 'package:flutter/material.dart';
import 'package:hotel_reservation/widgets/card_rayout/build_card.dart';

class ListviewRayout extends StatelessWidget {
  const ListviewRayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(
        8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BuildCard();
      },
    );
  }
}
