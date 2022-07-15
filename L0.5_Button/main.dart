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


        body: Center(
          child: ElevatedButton(
            child: Text('Click me'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 6, 75, 223),
            ),
            onPressed: () {
              print("OMATIIII");
            },
          ),
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
