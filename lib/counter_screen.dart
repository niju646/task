import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: _decrement, icon:const Icon(Icons.remove)),
            Text('counter value: $_counter'),
            IconButton(onPressed: _increment, icon:const Icon(Icons.add)),
            IconButton(onPressed: _reset, icon:const Icon(Icons.refresh)),
          ],
        ),
      ),
    );
  }
}
