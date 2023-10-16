import 'package:flutter/material.dart';
import 'package:randomizer/rangeselectorpage.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Randomizer',
      home: RangeSelectorPage(),
    );
  }
}
