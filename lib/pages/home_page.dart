import 'package:flutter/material.dart';

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
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset('images/rocket.png'),
                      const Text('Welcome',
                          style: TextStyle(
                            fontSize: 24.0,
                          )),
                      const Text('Diverse Patterns is a consulting company.'),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/space.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/travel.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Image.asset('images/yeah.png'),
                ),
              ),
            ],
          ),
        ));
  }
}
