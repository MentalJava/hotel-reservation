import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hotel_reservation/root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}
