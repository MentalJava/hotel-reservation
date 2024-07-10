import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Container(
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/images/hotel1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
            child: Padding(
              padding: EdgeInsets.only(
                left: 35,
              ),
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      size: 20,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      size: 20,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      size: 20,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: Colors.blue[200],
              size: 15,
            ),
            horizontalTitleGap: 0,
            title: const Text(
              'Gyeongju Lahan',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Lahan Select, 338 Bomun-ro, Gyeongju-si, Gyeongsangbuk-do',
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'more',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[200],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
