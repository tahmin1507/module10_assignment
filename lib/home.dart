import 'package:flutter/material.dart';
import 'portrait.dart';
import 'landscape.dart';

class OrientationScreen extends StatelessWidget {
  const OrientationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? const PortraitLayoutScreen()
              : const LandscapeLayoutScreen();
        },
      ),
    );
  }
}