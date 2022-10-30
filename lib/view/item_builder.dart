import 'package:flutter/material.dart';

class ItemBuilder extends StatelessWidget {
  final String name;
  final String date;
  const ItemBuilder({
    Key? key,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              date,
              style: const TextStyle(
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
