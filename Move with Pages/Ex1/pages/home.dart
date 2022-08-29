import 'package:flutter/material.dart';

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
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 6, 223, 96),
            ),
            icon: Icon(Icons.edit_location),
            label: Text(
              'Edit Location',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/lOC');
            },
          ),
          Text(Name),
          Text(age.toString()),
        ],
      )),
    );
  }
}
