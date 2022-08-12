import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const SAJITH(title: "My first app Relawa"),
  ));
}

class SAJITH extends StatefulWidget {
  const SAJITH({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SAJITH> createState() => _SAJITHState();
}

class _SAJITHState extends State<SAJITH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first app Relawa"),
        centerTitle: true,
        backgroundColor: Colors.amber[900],
      ),
      body: Text('Hello'),
    );
  }
}
