import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/favorite_controller.dart';
import 'package:hotel_reservation/models/hotel_list.dart';
import 'package:hotel_reservation/widgets/card_layout/parallax_hotel_card.dart';
import 'package:rive/rive.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _RiveDemoState();
}

class _RiveDemoState extends State<MyPage> {
  final FavoriteController favoriteController = Get.put(FavoriteController());
  final hotellist = HotelList();
  Artboard? riveArtboard;
  RiveAnimationController? controller;
  SMIBool? isDay;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/rive/light_dark.riv').then(
      (data) async {
        try {
          final file = RiveFile.import(data);
          final artboard = file.mainArtboard;
          var controller =
              StateMachineController.fromArtboard(artboard, 'State Machine 1');
          if (controller != null) {
            artboard.addController(controller);
            isDay = controller.findSMI('Theme toggled');
          }
          setState(() {
            riveArtboard = artboard;
          });
        } catch (e) {
          print(e);
        }
      },
    );
  }

  void toggleDayNight(bool newValue) {
    setState(() {
      isDay!.value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Rive Demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: riveArtboard == null
          ? const SizedBox()
          : SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ClipOval(
                    child: SizedBox(
                      width: 170,
                      height: 170,
                      child: Rive(
                        fit: BoxFit.cover,
                        artboard: riveArtboard!,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: isDay!.value == false
                            ? Colors.deepOrange
                            : Colors.grey,
                      ),
                      Switch(
                        value: isDay!.value,
                        onChanged: (value) => toggleDayNight(value),
                        activeColor: Colors.deepPurple,
                        activeTrackColor: Colors.deepPurpleAccent,
                        inactiveThumbColor: Colors.deepOrange,
                        inactiveTrackColor: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.nightlight_round,
                        color: isDay!.value == true
                            ? Colors.deepPurple
                            : Colors.grey,
                      ),
                    ],
                  ),
                  const Text(
                    'UJ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '19970810',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'My Favorite Hotels List',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: favoriteController.favoriteHotels.length,
                    itemBuilder: (context, index) {
                      final hotelName =
                          favoriteController.favoriteHotels[index];
                      final hotel = hotellist.hotels
                          .firstWhere((h) => h.name == hotelName);
                      return ParallaxHotelCard(
                        hotel: hotel,
                        index: index,
                      );
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
