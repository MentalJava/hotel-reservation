import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/view_toggle_controller.dart';
import 'package:hotel_reservation/screens/home_drawer.dart';
import 'package:hotel_reservation/widgets/button/home_icon_button.dart';
import 'package:hotel_reservation/widgets/button/list_toggle_button.dart';
import 'package:hotel_reservation/widgets/card_layout/gridview_layout.dart';
import 'package:hotel_reservation/widgets/card_layout/listview_layout.dart';

class Home extends StatelessWidget {
  final ViewToggleController viewToggleController =
      Get.put(ViewToggleController());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Main',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          HomeIconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          HomeIconButton(
            icon: Icon(
              Icons.language,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: Column(
        children: [
          ListToggleButton(),
          Expanded(
            child: Obx(
              () {
                return viewToggleController.isGridView.value
                    ? const ListviewLayout()
                    : const GridviewLayout();
              },
            ),
          ),
        ],
      ),
    );
  }
}
