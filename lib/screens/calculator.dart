import 'package:flutter/material.dart';
import 'package:flutter_practice/providers/calculator_provider.dart';
import 'package:provider/provider.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});

  final TextEditingController _num1controller = TextEditingController();

  final TextEditingController _num2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<CalculatorProvider>(context);

    Widget space = const SizedBox(
      width: 20,
    );
    print("rebulding");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _num1controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'enter the first number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _num2controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'enter the second number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCalcButton(context, '+', Colors.blue),
                space,
                _buildCalcButton(context, '-', Colors.pink),
                space,
                _buildCalcButton(context, '*', Colors.green),
                space,
                _buildCalcButton(context, '/', Colors.yellow),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              // child: Text(_result.toStringAsFixed(2)),
              child: Consumer<CalculatorProvider>(
                builder: (context, value, _) {
                  print("text rebulding");
                  return Text(
                    value.result.toStringAsFixed(2),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildCalcButton(
      BuildContext context, String op, Color color) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          // _calculate(op);
          double num1 = double.tryParse(_num1controller.text) ?? 0;
          double num2 = double.tryParse(_num2controller.text) ?? 0;
          Provider.of<CalculatorProvider>(context, listen: false)
              .calculator(op, num1, num2);
        },
        child: Text(
          op,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
