import 'package:flutter/material.dart';
import 'Sc.dart';

void main() {
  runApp(MaterialApp(
    home: HOME(),
  ));
}

class HOME extends StatefulWidget {
  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  String Name = "YALOOOOOOO";
  int age = 36;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ignore: avoid_print
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondScreen(
                value: Name,
                int: age.toString(),
              ),
            ));
          },
          child: const Text('Hit me!'),
        ),
      ),
    );
  }
}
