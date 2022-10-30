import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String details;
  const Details({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                details,
                style: TextStyle(color: Colors.amber[300], fontSize: 19),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
