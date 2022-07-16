import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app Relawa"),
          centerTitle: true,
          backgroundColor: Colors.amber[900],
        ),


        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Color.fromARGB(255, 11, 7, 255),
              child: Text('Hello'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              color: Color.fromARGB(255, 7, 255, 23),
              child: Text('Hello'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
              color: Color.fromARGB(255, 255, 152, 7),
              child: Text('Hello'),
            ),
          ],
        ),

        
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("Click"),
          backgroundColor: Color.fromARGB(255, 2, 255, 14),
        ),
      ),
    );
  }
}
