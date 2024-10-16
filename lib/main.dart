import 'package:flutter/material.dart';
import 'package:ing_3_2025/screen1.dart';
import 'package:ing_3_2025/screen2_1.dart';
import 'package:ing_3_2025/screen2_2.dart';
import 'package:ing_3_2025/screen3.dart';
import 'package:ing_3_2025/screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen4(),
    );
  }
}
