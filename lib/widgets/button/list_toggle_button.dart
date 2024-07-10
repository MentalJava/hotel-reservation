import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_reservation/controllers/view_toggle_controller.dart';

class ListToggleButton extends StatelessWidget {
  final ViewToggleController viewToggleController =
      Get.put(ViewToggleController());
  final RxList<bool> selections = [true, false].obs;

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
              for (int i = 0; i < selections.length; i++) {
                selections[i] = i == index;
              }
              viewToggleController.toggleView();
            },
            isSelected: selections,
            selectedColor: Colors.blue[200],
            children: const [
              Icon(Icons.grid_view),
              Icon(Icons.list),
            ],
          );
        }),
      ),
    );
  }
}
