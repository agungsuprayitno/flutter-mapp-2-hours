import 'package:flutter/material.dart';
import 'package:flutter_init/core/constants.dart';
import 'package:flutter_init/data/item_class.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.item});
  final ItemClass item;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Hello Snackbar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Center(
            child: Column(
              children: [
                Image.asset(widget.item.imagePath),
                const SizedBox(height: kDouble20),
                Wrap(
                  spacing: kDouble10,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 20;
                        });
                      },
                      child: const Text('Small Title'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 80;
                        });
                      },
                      child: const Text('Medium Title'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 120;
                        });
                      },
                      child: const Text('Large Title'),
                    ),
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCustom = 200;
                        });
                      },
                      child: const Text('Huge Title'),
                    )
                  ],
                ),
                FittedBox(
                  child: Text(
                    widget.item.title,
                    style: TextStyle(
                        fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  widget.item.longDescription,
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
