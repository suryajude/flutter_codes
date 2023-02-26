import 'package:flutter/material.dart';

class AlertDialouge_practice extends StatefulWidget {
  const AlertDialouge_practice({super.key});

  @override
  State<AlertDialouge_practice> createState() => _AlertDialouge_practiceState();
}

class _AlertDialouge_practiceState extends State<AlertDialouge_practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          color: Colors.purple,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color.fromARGB(255, 138, 179, 199),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    title:
                        Text("Do you want to return to the previous screen ?"),
                    content: Text("Helo"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("yes")),
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..showSnackBar(SnackBar(content: Text("Helo")));
                          },
                          child: Text("no"))
                    ],
                  );
                });
          },
          child: Text(
            "Show Alert Dialogue",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
