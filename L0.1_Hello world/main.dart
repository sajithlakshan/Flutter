import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
        centerTitle: true,
        backgroundColor: Colors.amber[900],
      ),
      body: Center(
        child: Text(
          "HIIIII",
          style: TextStyle(
              fontSize: 100.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 5, 78, 214)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Color.fromARGB(255, 2, 255, 14),
      ),
    ),
  ));
}
