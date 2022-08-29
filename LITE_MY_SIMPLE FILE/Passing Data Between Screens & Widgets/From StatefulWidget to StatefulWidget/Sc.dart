import 'dart:html';

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String value;
  final String int;
  const SecondScreen({Key? key, required this.value, required this.int})
      : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[Text(widget.value), Text(widget.int)]),
    );
  }
}
