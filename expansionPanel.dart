import 'package:flutter/material.dart';

class ExpansionPanel_practice extends StatefulWidget {
  const ExpansionPanel_practice({super.key});

  @override
  State<ExpansionPanel_practice> createState() =>
      _ExpansionPanel_practiceState();
}

class _ExpansionPanel_practiceState extends State<ExpansionPanel_practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
