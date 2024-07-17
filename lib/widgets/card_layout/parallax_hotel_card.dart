import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/models/hotel_list_model.dart';
import 'package:hotel_reservation/screens/home_detail.dart';

class ParallaxHotelCard extends StatelessWidget {
  final Hotel hotel;
  final int index;

  const ParallaxHotelCard({
    super.key,
    required this.hotel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => HomeDetail(hotel: hotel, index: index),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: AspectRatio(
          aspectRatio: 16 / 8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image(
                    image: AssetImage(hotel.image),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        hotel.address,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
