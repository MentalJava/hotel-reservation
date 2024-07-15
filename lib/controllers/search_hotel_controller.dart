import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SearchHotelController extends GetxController {
  var filters = {
    "No-kids Zone": false,
    "Pet-Friendly": false,
    "Free breakfast": false,
  }.obs;
  var isOpen = false.obs;
  var isDate = false.obs;

  var checkInDate = DateTime.now().obs;
  var checkOutDate = DateTime.now().obs;
  var dateFormat = DateFormat('yyyy.MM.dd (EEE)');

  void isOpenPanel() {
    isOpen.value = !isOpen.value;
  }

  void isDatePanel() {
    isDate.value = !isDate.value;
  }

  void toggleFilter(String fliter) {
    filters[fliter] = !filters[fliter]!;
  }

  void setCheckInDate(DateTime date) {
    checkInDate.value = date;
  }

  void setCheckOutDate(DateTime date) {
    checkOutDate.value = date;
  }

  String get formattedCheckInDate => dateFormat.format(checkInDate.value);
  String get formattedCheckOutDate => dateFormat.format(checkOutDate.value);

  List<String> get selectedFilters {
    return filters.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();
  }
}
