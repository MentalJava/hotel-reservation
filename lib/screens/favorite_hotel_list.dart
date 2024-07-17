import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/favorite_controller.dart';
import 'package:hotel_reservation/models/hotel_list.dart';

class FavoriteHotelList extends StatelessWidget {
  final FavoriteController favoriteController = Get.put(FavoriteController());
  final hotellist = HotelList();
  FavoriteHotelList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Favorite Hotels',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: favoriteController.favoriteHotels.length,
          itemBuilder: (context, index) {
            final hotelName = favoriteController.favoriteHotels[index];
            final hotel = hotellist.hotels
                .firstWhere((h) => h.name == hotelName); // list 안에 첫번째 일치값 가져오기
            return Dismissible(
              key: Key(hotelName),
              background: Container(color: Colors.red),
              onDismissed: (direction) {
                favoriteController.onHeartTap(hotelName);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$hotelName removed from favorites')),
                );
              },
              child: Container(
                height: 75,
                width: Get.width,
                padding: const EdgeInsets.all(25),
                child: Text(
                  hotel.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
