import 'package:get/get.dart';

class ViewToggleController extends GetxController {
  var isGridView = true.obs;

  void setToggleButton() {
    isGridView.value = !isGridView.value;
  }

  List<bool> get selections => [isGridView.value, !isGridView.value];
}
