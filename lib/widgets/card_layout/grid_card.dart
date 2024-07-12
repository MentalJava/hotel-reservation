import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/models/hotel_list.dart';
import 'package:hotel_reservation/widgets/grid_hotel_rating_star.dart';

class GridCard extends StatelessWidget {
  const GridCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color.fromRGBO(222, 216, 216, 1)),
          ),
          elevation: 3,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  HotelList().hotels[index].image,
                  fit: BoxFit.cover,
                  height: 130,
                  width: Get.width,
                ),
              ),
              gridRatingStar(HotelList().hotels[index].star),
              Transform.translate(
                offset: const Offset(0, -10),
                child: ListTile(
                  leading: Transform.translate(
                    offset: const Offset(-7, 0),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blue[200],
                      size: 20,
                    ),
                  ),
                  title: Text(
                    HotelList().hotels[index].name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  horizontalTitleGap: -5,
                  subtitle: Text(
                    HotelList().hotels[index].address,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(-10, -5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'more',
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
