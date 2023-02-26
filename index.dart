import 'package:flutter/material.dart';
import 'package:learn/methods.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

List<String> indexes = [
  "Check Box",
  "Radio Button",
  "Slider",
  "switch",
  "Alert Dialouge",
  "Bottom Sheet",
  "Expansion Panel"
];
List<String> routes = [
  '/checkBox',
  '/radioButton',
  '/slider',
  '/switch',
  '/alert',
  '/bottomSheet',
  '/expansionPanel'
];

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: listTiles(indexes, routes),
      ),
    );
  }
}
