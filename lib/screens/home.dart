import 'package:flutter/material.dart';
import 'package:hotel_reservation/screens/drawer.dart';
import 'package:hotel_reservation/widgets/button/home_icon_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
    );
  }
}
