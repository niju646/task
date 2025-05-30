import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context, int newIndex , _){
      return BottomNavigationBar(
      currentIndex: newIndex,
      onTap: (index) {
        indexChangeNotifier.value = index;
      },
      selectedItemColor: Colors.black,
      
      items:const [
      BottomNavigationBarItem(icon: Icon(Icons.task_alt_rounded),label: 'level 1'),
      BottomNavigationBarItem(icon: Icon(Icons.task_alt_rounded),label: 'level 2'),
      BottomNavigationBarItem(icon: Icon(Icons.task_alt_rounded),label: 'level 3'),
    ],);
    });
  }
}