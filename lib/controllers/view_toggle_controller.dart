import 'package:get/get.dart';

class ViewToggleController extends GetxController {
  var isGridView = true.obs;

  void toggleView() {
    isGridView.value = !isGridView.value;
  }
}
