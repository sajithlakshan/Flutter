import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: sajith()));
}

class sajith extends StatefulWidget {
  @override
  State<sajith> createState() => _MyWidgetState();
}

List<String> SAJ = ['AAAAAAAAA', 'BBBBBBB', 'CCCCCCCCCCC'];

class _MyWidgetState extends State<sajith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 159, 159, 159),
      body: Column(
        children: SAJ.map((PUKA) => Text(PUKA)).toList(),
      ),
    );
  }
}
