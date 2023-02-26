// this page is to practice the radio button
import 'package:flutter/material.dart';

class RadioPractice extends StatefulWidget {
  const RadioPractice({super.key});

  @override
  State<RadioPractice> createState() => _RadioPracticeState();
}

enum Test {
  one,
  two,
  three
} // the enum that which we represeted in the steps ---1

class _RadioPracticeState extends State<RadioPractice> {
  // mention the current value to represent the current state
  Test? _currentValue = Test.one;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: prefer_const_constructors
            ListTile(
                title: const Text("one"),
                leading: Radio<Test>(
                    activeColor: Colors.purple,
                    value: Test.one,
                    groupValue: _currentValue,
                    onChanged: (Test? value) {
                      setState(() {
                        _currentValue = value;
                        print(_currentValue);
                      });
                    })),
            ListTile(
              title: Text("two"),
              leading: Radio<Test>(
                  activeColor: Colors.purple,
                  value: Test.two,
                  groupValue: _currentValue,
                  onChanged: (Test? value) {
                    setState(() {
                      _currentValue = value;
                      print(_currentValue);
                    });
                  }),
            ),
            ListTile(
              title: Text("three"),
              leading: Radio<Test>(
                  activeColor: Colors.purple,
                  value: Test.three,
                  groupValue: _currentValue,
                  onChanged: (Test? value) {
                    setState(() {
                      _currentValue = value;
                      print(_currentValue);
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
// to make a radio button we should create enum outside of the class
// use the enum name inside of the generic of the radio class
// give the value of the enum inside of the radio class
// set the group value as an initial value with the enum 
// ex Test? _currentValue = Test.one;