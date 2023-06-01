import 'package:flutter/material.dart';
import 'package:flutter_init/core/constants.dart';
import 'package:flutter_init/data/item_class.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.item});
  final ItemClass item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Center(
            child: Column(
              children: [
                Image.asset(item.imagePath),
                const SizedBox(height: kDouble20),
                Wrap(
                  spacing: kDouble10,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Small Title'),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Medium Title'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Large Title'),
                    ),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Huge Title'),
                    )
                  ],
                ),
                FittedBox(
                  child: Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  item.longDescription,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: kDouble10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
