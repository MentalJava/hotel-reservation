import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FavoriteController extends GetxController {
  var favoriteHotels = <String>[].obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    List<dynamic>? storedFavorites = box.read<List<dynamic>>('favorites');

    if (storedFavorites != null) {
      favoriteHotels.addAll(storedFavorites.cast<String>());
    }
  }

  void onHeartTap(String hotelName) {
    if (favoriteHotels.contains(hotelName)) {
      favoriteHotels.remove(hotelName);
    } else {
      favoriteHotels.add(hotelName);
    }
    box.write('favorites', favoriteHotels);
  }

  bool isFavorite(String hotelName) {
    return favoriteHotels.contains(hotelName);
  }
}
