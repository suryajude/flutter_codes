import 'package:flutter/material.dart';
import 'package:learn/alertDialoge.dart';
import 'package:learn/bottomSheet.dart';
import 'package:learn/checkBox.dart';
import 'package:learn/expansionPanel.dart';
import 'package:learn/index.dart';
import 'package:learn/radioButton.dart';
import 'package:learn/slider.dart';
import 'package:learn/switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/index',
      routes: {
        '/index': (context) => const Index(),
        '/checkBox': (context) => const CheckBoxPractice(),
        '/radioButton': (context) => const RadioPractice(),
        '/slider': (context) => const SliderPractice(),
        '/switch': (context) => const SwitchPractice(),
        '/alert': (context) => const AlertDialouge_practice(),
        '/bottomSheet': (context) => const BottomSheet_practice(),
        '/expansionPanel': (context) => const ExpansionPanel_practice()
      },
    );
  }
}
