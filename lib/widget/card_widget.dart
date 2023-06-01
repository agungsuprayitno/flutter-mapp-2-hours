import 'package:flutter/material.dart';
import 'package:flutter_init/data/item_class.dart';
import 'package:flutter_init/core/constants.dart';
import 'package:flutter_init/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.item});
  final ItemClass item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                item: item,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble8),
          // width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(item.imagePath),
              Text(
                item.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(item.shortDescription),
              const SizedBox(height: kDouble10)
            ],
          ),
        ),
      ),
    );
  }
}
