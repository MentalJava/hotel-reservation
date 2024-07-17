import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_reservation/screens/favorite_hotel_list.dart';
import 'package:hotel_reservation/screens/home.dart';
import 'package:hotel_reservation/screens/my_page.dart';
import 'package:hotel_reservation/screens/search_hotel.dart';
import 'package:hotel_reservation/screens/sign_in.dart';
import 'package:hotel_reservation/screens/sign_up.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign In',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => SignIn(),
        ),
        GetPage(
          name: '/signup',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/home',
          page: () => Home(),
        ),
        GetPage(
          name: '/favorite',
          page: () => FavoriteHotelList(),
        ),
        GetPage(
          name: '/search',
          page: () => SearchHotel(),
        ),
        GetPage(
          name: '/mypage',
          page: () => MyPage(),
        ),
      ],
    );
  }
}
