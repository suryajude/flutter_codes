import 'package:flutter/material.dart';

class BottomSheet_practice extends StatefulWidget {
  const BottomSheet_practice({super.key});

  @override
  State<BottomSheet_practice> createState() => _BottomSheet_practiceState();
}

class _BottomSheet_practiceState extends State<BottomSheet_practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          onPressed: () {
            showModalBottomSheet(
                barrierColor: Colors.grey,
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 200.0,
                    child: Container(
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Hello how are you prepare to meet the lord your GOD"),
                            SizedBox(
                              height: 20.0,
                            ),
                            MaterialButton(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Ok",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        )),
                  );
                });
          },
          child: Text("show Bottom Sheet"),
        ),
      ),
    );
  }
}
