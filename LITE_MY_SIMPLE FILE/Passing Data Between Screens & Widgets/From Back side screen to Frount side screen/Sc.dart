import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    Key? key,
  }) : super(key: key);
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
      body: Center(
        child: ElevatedButton(
          ///////////////////////////////////////////////////////
          onPressed: () => Navigator.of(context).pop('Sajith'),
          child: const Text('Return Data'),
          /////////////////////////////////////////////////////
        ),
      ),
    );
  }
}
