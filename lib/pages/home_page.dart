import 'package:flutter/material.dart';
import 'package:flutter_init/core/constants.dart';
import 'package:flutter_init/widget/card_widget.dart';
import 'package:flutter_init/data/item_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              item: ItemClass(
                title: 'Rocket',
                shortDescription: rocketShortDescription,
                longDescription: rocketLongDescription,
                imagePath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    item: ItemClass(
                      title: 'Travel',
                      shortDescription: travelShortDescription,
                      longDescription: travelLongDescription,
                      imagePath: 'images/travel.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    item: ItemClass(
                      title: 'Space',
                      shortDescription: spaceShortDescription,
                      longDescription: spaceLongDescription,
                      imagePath: 'images/space.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              item: ItemClass(
                title: 'Yeah',
                shortDescription: yeahShortDescription,
                longDescription: yeahLongDescription,
                imagePath: 'images/yeah.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
