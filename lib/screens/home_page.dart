import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/bottom_nav.dart';
import 'package:flutter_practice/screens/calculator.dart';
import 'package:flutter_practice/screens/color_screen.dart';
import 'package:flutter_practice/screens/counter_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _page = [
     Calculator(),
    const ColorScreen(),
    const CounterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, index, _) {
          return _page[index];
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
