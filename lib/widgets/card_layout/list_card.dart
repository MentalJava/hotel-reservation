import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/models/hotel_list.dart';
import 'package:hotel_reservation/screens/home_detail.dart';
import 'package:hotel_reservation/widgets/rating/list_hotel_rating_star.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(
          color: Color.fromRGBO(173, 163, 163, 0.5),
        ),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          children: [
            Hero(
              tag: 'hotel_image_$index',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  HotelList().hotels[index].image,
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 8,
                  left: 8,
                  right: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    listHotelRating(HotelList().hotels[index].star),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      HotelList().hotels[index].name,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      HotelList().hotels[index].address,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                        ),
                        child: Text(
                          'more',
                          style: TextStyle(
                            color: Colors.blue[200],
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          Get.to(
                            () => HomeDetail(
                                hotel: HotelList().hotels[index], index: index),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
