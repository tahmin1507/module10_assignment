import 'package:flutter/material.dart';

class PortraitLayoutScreen extends StatelessWidget {
  const PortraitLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: screenSize.width / 2,
                  child: CircleAvatar(
                    radius: (screenSize.width / 2),
                    backgroundImage: const NetworkImage(
                        'https://www.indiablooms.com/sports_pic/2020/56870a532b69a6100879c45d9591b5b8.jpg'),
                  ),
                ),
                const Text(
                  'Shakib Al Hasan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Shakib Al Hasan is a Bangladeshi cricketer and current captain of the Bangladesh national cricket team in Tests and T20Is. He is known for his aggressive left-handed batting style in the middle order and controlled slow left-arm orthodox bowling',
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
              physics: const ScrollPhysics(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                for (int i = 1; i <= 9; i++)
                  Image.network(
                      'https://media.crictracker.com/media/featureimage/2017/03/Shakib-Al-Hasan-2.jpg',
                      fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}