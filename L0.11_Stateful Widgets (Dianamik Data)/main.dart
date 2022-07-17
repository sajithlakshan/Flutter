import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Shogon = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Shogon += 1;
          });
        },

        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey[900],
      body: 
      
      Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(

          children: <Widget>[
            Text(

              '$Shogon',
              
              style: TextStyle(
                color: Color.fromARGB(255, 218, 171, 0),
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,


              ),
            ),
          ],
        ),
      ),
    );
    // );
  }
}
