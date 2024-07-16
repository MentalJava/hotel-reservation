import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/widgets/button/home_drawer_button.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 80,
              ),
              child: Text(
                "Pages",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          HomeDrawerButton(
            icon: Icon(
              Icons.home,
              color: Colors.blue[200],
            ),
            title: 'Home',
          ),
          HomeDrawerButton(
            onClickEvent: () {
              Get.toNamed('/search');
            },
            icon: Icon(
              Icons.search,
              color: Colors.blue[200],
            ),
            title: 'Search',
          ),
          HomeDrawerButton(
            onClickEvent: () {
              Get.toNamed('/favorite');
            },
            icon: Icon(
              Icons.location_city,
              color: Colors.blue[200],
            ),
            title: 'Favorite Hotel',
          ),
          HomeDrawerButton(
            onClickEvent: () {
              Get.toNamed('/mypage');
            },
            icon: Icon(
              Icons.person,
              color: Colors.blue[200],
            ),
            title: 'My Page',
          ),
        ],
      ),
    );
  }
}
