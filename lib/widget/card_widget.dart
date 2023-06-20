import 'package:flutter/material.dart';
import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});
  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: kdouble5),
            Image.asset('images/$imagePath.png'),
            Text(title,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                )),
            Text(description),
            const SizedBox(height: kdouble10),
          ],
        ),
      ),
    );
  }
}
