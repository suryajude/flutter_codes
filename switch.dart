import 'package:flutter/material.dart';

class SwitchPractice extends StatefulWidget {
  const SwitchPractice({super.key});

  @override
  State<SwitchPractice> createState() => _SwitchPracticeState();
}

class _SwitchPracticeState extends State<SwitchPractice> {
  bool state = false;
  bool colorSwitch = false;
  bool light0 = true;

  // set the icon accoring to it's state
  final MaterialStateProperty<Icon?> iconState =
      MaterialStateProperty.resolveWith<Icon?>((states) {
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    };
  });
  final MaterialStateProperty<Color?> trackColor =
      MaterialStateProperty.resolveWith<Color?>((states) {
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.red;
      } else {
        return Colors.green;
      }
    };
  });
  final MaterialStateProperty<Color?> overlayColor =
      MaterialStateProperty.resolveWith<Color?>((states) {
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.amber;
      } else {
        return Colors.green;
      }
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                  value: state,
                  onChanged: (bool value) {
                    setState(() {
                      state = value;
                    });
                    print(state);
                  }),
              SizedBox(
                height: 40.0,
              ),
              Switch(
                  trackColor: trackColor,
                  overlayColor: overlayColor,
                  value: colorSwitch,
                  onChanged: (bool value) {
                    setState(() {
                      colorSwitch = value;
                    });
                  }),
              Switch(
                value: light0,
                thumbIcon: iconState,
                onChanged: (bool value) {
                  setState(() {
                    light0 = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
