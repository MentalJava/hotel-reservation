import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/favorite_controller.dart';
import 'package:hotel_reservation/models/hotel_list_model.dart';
import 'package:hotel_reservation/widgets/rating/list_hotel_rating_star.dart';

class HomeDetail extends StatelessWidget {
  final int index;
  final Hotel hotel;

  final FavoriteController favoriteController = Get.put(FavoriteController());

  HomeDetail({
    super.key,
    required this.hotel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Detail',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              GestureDetector(
                onDoubleTap: () {
                  favoriteController.onHeartTap(hotel.name);
                },
                child: Hero(
                  tag: 'hotel_image_$index',
                  child: Image.asset(hotel.image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Obx(() {
                    bool isFavorite = favoriteController.isFavorite(hotel.name);
                    return IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : null,
                        size: 35,
                      ),
                      onPressed: () {
                        favoriteController.onHeartTap(hotel.name);
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                listHotelRating(hotel.star),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                  ),
                  child: Text(
                    hotel.name,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        right: 8,
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.blue[200],
                      ),
                    ),
                    Text(
                      hotel.address,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.indigo[300],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        right: 8,
                      ),
                      child: Icon(
                        Icons.call,
                        color: Colors.blue[200],
                      ),
                    ),
                    Text(
                      hotel.phone,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.indigo[300],
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Text(
                  hotel.description,
                  style: TextStyle(fontSize: 15, color: Colors.indigo[300]),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
