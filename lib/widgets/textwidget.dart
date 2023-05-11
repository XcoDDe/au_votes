import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String note;
 const TextWidget({Key? key, required this.note}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      note,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
      );
  }
}