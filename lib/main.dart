import 'package:flutter/material.dart';
import 'package:flutter_practice/providers/calculator_provider.dart';
import 'package:flutter_practice/providers/color_provider.dart';
import 'package:flutter_practice/providers/counter_provider.dart';
import 'package:flutter_practice/screens/home_page.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => CalculatorProvider()),
    ChangeNotifierProvider(create: (_) => ColorProvider()),
    ChangeNotifierProvider(create: (_) => CounterProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
