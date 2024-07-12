import 'package:flutter/material.dart';
import 'package:hotel_reservation/widgets/card_layout/grid_card.dart';
import 'package:hotel_reservation/models/hotel_list.dart';

class GridviewLayout extends StatelessWidget {
  const GridviewLayout({
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
      itemCount: HotelList().hotels.length,
      itemBuilder: (context, index) {
        return GridCard(
          index: index,
        );
      },
    );
  }
}
