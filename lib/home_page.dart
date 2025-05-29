import 'package:flutter/material.dart';
import 'package:flutter_practice/calculator.dart';
import 'package:flutter_practice/color_screen.dart';
import 'package:flutter_practice/counter_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

Widget space = const SizedBox(height: 20,);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const    CounterScreen()));
            }, child:const Text('Counter')),
            space,
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ColorScreen()));
            }, child:const Text("color")),
            space,
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Calculator()));
            }, child:const Text("calculator")),
          ],
        ),
      ),
    );
  }
}