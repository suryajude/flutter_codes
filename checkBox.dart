import 'package:flutter/material.dart';

class CheckBoxPractice extends StatefulWidget {
  const CheckBoxPractice({super.key});

  @override
  State<CheckBoxPractice> createState() => _CheckBoxPracticeState();
}

class _CheckBoxPracticeState extends State<CheckBoxPractice> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Checkbox(
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: ischecked,
          onChanged: (bool? value) {
            setState(() {
              ischecked = !ischecked;
            });
          }),
    ));
  }
}

// for the color of the CheckBox
Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactive = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused
  };
  if (states.any(interactive.contains)) {
    return Colors.yellow;
  } else {
    return Colors.green;
  }
}
