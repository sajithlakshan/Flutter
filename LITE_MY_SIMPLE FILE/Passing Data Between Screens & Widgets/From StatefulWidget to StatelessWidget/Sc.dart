import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String value;
  final String int;
  const SecondScreen({Key? key, required this.value, required this.int})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[Text(value), Text(int)]),
    );
  }
}
