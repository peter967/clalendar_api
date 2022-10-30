import 'package:clalendar_api/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.black,
          cardTheme: const CardTheme(
            surfaceTintColor: Colors.black,
            color: Colors.black,
            elevation: 5,
            shadowColor: Colors.amber,
          )),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
