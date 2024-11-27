import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final String v1;
  const Test({super.key, required this.v1});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
