import 'package:flutter/material.dart';
import 'package:simplesttutorial/class/item_class.dart';
import 'package:simplesttutorial/pages/description_page.dart';
import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const DescriptionPage();
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kdouble5),
              Image.asset(box.imagePath),
              Text(box.title,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text(box.description),
              const SizedBox(height: kdouble10),
            ],
          ),
        ),
      ),
    );
  }
}
