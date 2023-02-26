// this page is for the slider widget

import 'package:flutter/material.dart';

class SliderPractice extends StatefulWidget {
  const SliderPractice({super.key});

  @override
  State<SliderPractice> createState() => _SliderPracticeState();
}

class _SliderPracticeState extends State<SliderPractice> {
  double _currentValue = 20;
  double primaryValue = 30;
  double secondaryValue = 70.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          // create a slider widget inside of the child
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Normal SLider"),
            SizedBox(
              height: 40.0,
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
              // the value to set the current value ---> it's from the _currentValue
              value: _currentValue,
              // set the onchanged value to set the current state when it's changing
              onChanged: (double value) {
                // give the value inside of the setState
                setState(() {
                  _currentValue = value;
                });
              },
              // set the min and max value for the initial and the ending
              min: 0,
              max: 100,
              // set the divisions
              divisions: 7,
              label: _currentValue
                  .round()
                  .toString(), // this will only work with the divisions
            ),
            SizedBox(
              height: 70.0,
            ),
            Text("${_currentValue.toString()}"),
            SizedBox(
              height: 40.0,
            ),
            Text("Different Slider"),
            SizedBox(
              height: 40.0,
            ),
            Slider(
                min: 0.0,
                max: 100.0,
                activeColor: Colors.amber,
                value: primaryValue,
                secondaryActiveColor: Colors.white70,
                secondaryTrackValue: secondaryValue,
                onChanged: (double value) {
                  setState(() {
                    primaryValue = value;
                  });
                }),
            Slider(
                min: 0.0,
                max: 100.0,
                activeColor: Colors.blue,
                value: secondaryValue,
                onChanged: (double value) {
                  setState(() {
                    secondaryValue = value;
                  });
                })
          ]),
        ),
      ),
    );
  }
}
// procedure for the different slider
/**
 * to use the different slider we should create the primary and secondary value 
 * give the primary value to the first slider and the secondary value to the first slider's secondary track 
 * give the secondary value to the second slider value
 * set the on changed to the each sliders
 */
