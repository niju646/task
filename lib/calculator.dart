import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final TextEditingController _num1controller = TextEditingController();
  final TextEditingController _num2controller = TextEditingController();
  double _result =0.0;

  void _calculate(String operation){
      double num1 = double.tryParse(_num1controller.text)??0;
      double num2 = double.tryParse(_num2controller.text)??0;
      setState(() {
        switch(operation){
          case '+':
            _result = num1+num2;
          case '-':
            _result = num1-num2;
          case '*':
          _result = num1*num2;
          case '%':
            _result = num1%num2;
            break;
          
        }
      });
  }


  @override
  Widget build(BuildContext context) {

    Widget space = const SizedBox(width: 20,);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _num1controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'enter the number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: _num2controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'enter the number',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            _BuildCalcButton('+',Colors.blue),
            space,
            _BuildCalcButton('-',Colors.pink),
            space,
            _BuildCalcButton('*',Colors.green),
            space,
            _BuildCalcButton('/',Colors.yellow),
              ],
            ),
            const SizedBox(height: 20,),
            
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(_result.toStringAsFixed(2)),
            )
          ],
        ),
      
      ),
    );
  }

  ElevatedButton _BuildCalcButton(String op,Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: (){
                _calculate(op);
              }, child:Text(op,style: TextStyle(color: Colors.white),) );
  }
}