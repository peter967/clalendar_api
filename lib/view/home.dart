import 'package:clalendar_api/controller/providers/providers.dart';
import 'package:clalendar_api/model/model.dart';
import 'package:clalendar_api/view/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'item_builder.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(dataProvider);
    return Scaffold(
      body: data.when(
        data: (data) {
          final List<Model> result = data.map((e) => e).toList();
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: result.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onLongPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Details(
                        details: data[i].description,
                      );
                    }));
                  },
                  child: ItemBuilder(
                    name: data[i].name,
                    date: data[i].date,
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
            ),
          );
        },
        error: (e, s) {
          return null;
        },
        loading: (() {
          return null;
        }),
      ),
    );
  }
}
