import 'package:flutter/material.dart';
import 'package:flutter_practice/providers/color_provider.dart';
import 'package:provider/provider.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  // Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    print('color rebulding');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("color screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              color: Provider.of<ColorProvider>(context).currentColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      // _changeColor(Colors.red);
                      Provider.of<ColorProvider>(context, listen: false)
                          .changeColor(Colors.red);
                    },
                    child: const Text('Red')),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {
                      // _changeColor(Colors.green);
                      Provider.of<ColorProvider>(context, listen: false)
                          .changeColor(Colors.green);
                    },
                    child: const Text("Green"))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('refresh'),
            IconButton(
                onPressed: () {
                  // _refresh();
                  Provider.of<ColorProvider>(context, listen: false).refresh();
                },
                icon: const Icon(
                  Icons.refresh,
                )),
          ],
        ),
      ),
    );
  }
}
