import 'package:flutter/material.dart';
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
              const CardWidget(
                  title: 'Rocket',
                  description: 'I am a rocket',
                  imagePath: 'rocket'),
              Row(
                children: const [
                  Expanded(
                    child: CardWidget(
                        title: 'Space',
                        description: 'I am a space',
                        imagePath: 'space'),
                  ),
                  Expanded(
                    child: CardWidget(
                        title: 'Travel',
                        description: 'Travel is fun',
                        imagePath: 'travel'),
                  ),
                ],
              ),
              const CardWidget(
                  title: 'Yeah!',
                  description: 'Yeah! I did it.',
                  imagePath: 'yeah'),
            ],
          ),
        ));
  }
}
