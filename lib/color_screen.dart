import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {


  Color _color = Colors.red;

void _changeColor(Color newColor){
  setState(() {
    _color=newColor;
  });
}

void _refresh(){
  setState(() {
    _color=Colors.grey;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("color screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              color: _color,
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: (){
                  _changeColor(Colors.red);
                }, child:const Text('Red')),
                const SizedBox(width: 20,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green,),
                  onPressed: (){
                  _changeColor(Colors.green);
                }, child:const Text("Green"))
              ],
            ),
           const SizedBox(height: 20,),
          const  Text('refresh'),
            IconButton(onPressed: (){
              _refresh();
            }, icon:const Icon(Icons.refresh,))
          ],
        ),
      ),
    );
  }
}