import 'package:flutter/material.dart';

void main() {
  runApp(SAJITH()); //Run only sajith function
}

class SAJITH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo  PPPPP',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app Relawa"),
          centerTitle: true,
          backgroundColor: Colors.amber[900],
        ),
        body: Text('Hello'),
      ),
    );
  }
}
