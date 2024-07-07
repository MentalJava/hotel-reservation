import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
      ],
    );
  }
}
