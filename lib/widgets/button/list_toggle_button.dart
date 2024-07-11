import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/view_toggle_controller.dart';

class ListToggleButton extends StatelessWidget {
  final ViewToggleController viewToggleController =
      Get.put(ViewToggleController());
  final RxList<bool> selections = List.generate(2, (index) => false).obs;

  ListToggleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        right: 5,
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Obx(() {
          return ToggleButtons(
            onPressed: (index) {
              viewToggleController.setToggleButton();
            },
            isSelected: viewToggleController.selections,
            selectedColor: Colors.blue[200],
            children: const [
              Icon(Icons.list),
              Icon(Icons.grid_view),
            ],
          );
        }),
      ),
    );
  }
}
