import 'package:flutter/material.dart';
import 'package:hotel_reservation/widgets/card_layout/list_card.dart';
import 'package:hotel_reservation/models/hotel_list.dart';

class ListviewLayout extends StatelessWidget {
  const ListviewLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(
        8,
      ),
      itemCount: HotelList().hotels.length,
      itemBuilder: (context, index) {
        return ListCard(index: index);
      },
    );
  }
}
