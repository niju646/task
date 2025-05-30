import 'package:flutter/material.dart';
import 'package:flutter_practice/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  // int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: Provider.of<CounterProvider>(context).decrement,
                icon: const Icon(Icons.remove)),
            Consumer<CounterProvider>(
              builder: (context, value, child) {
                print("rebuilding counter");
                return Text(
                  '${value.counter}',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                );
              },
            ),
            IconButton(
                onPressed: Provider.of<CounterProvider>(context).increment,
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: Provider.of<CounterProvider>(context).reset,
                icon: const Icon(Icons.refresh)),
          ],
        ),
      ),
    );
  }
}
