import 'package:flutter/material.dart';

void main() {
  runApp(Myappw());
}

class Myappw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SAJ"),
        ),
        body: Center(
          child: Text(
            "Hello Saj",
            style: TextStyle(
                fontSize: 50.0,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 117, 219, 21)),
          ),
        ),
      ),
    );
  }
}
