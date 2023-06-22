import 'package:flutter/material.dart';
import 'package:simplesttutorial/class/item_class.dart';
import 'package:simplesttutorial/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Diverse Patterns',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                  box: ItemClass(
                      title: 'Rocket',
                      description: 'I am a rocket',
                      imagePath: 'images/rocket.png')),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                        box: ItemClass(
                            title: 'Space',
                            description: 'Space is cool',
                            imagePath: 'images/space.png')),
                  ),
                  Expanded(
                    child: CardWidget(
                        box: ItemClass(
                            title: 'Travel',
                            description: 'I love travel',
                            imagePath: 'images/travel.png')),
                  ),
                ],
              ),
              CardWidget(
                  box: ItemClass(
                      title: 'Yeah!',
                      description: 'Yeah! I did it.',
                      imagePath: 'images/yeah.png')),
            ],
          ),
        ));
  }
}
