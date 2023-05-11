import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Image(
        image: AssetImage(
          'assets/logo2.png',
        ),
      width: 70,
      ),
    );
  }
}