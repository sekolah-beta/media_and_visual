import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Screen'),
      ),
      body: ListView(
        children: const [
          // uncomment this code
          // Image.asset('assets/box.png'),
          // Image.asset('assets/coffee.gif'),
          // Image.network('https://picsum.photos/250?image=9'),
          // Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
        ],
      ),
    );
  }
}
