import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text('My name is whu?'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),



      body: Padding(

        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Center(

              child: CircleAvatar(
                backgroundImage: AssetImage('A_assets/phone.jpg'),
                radius: 40.0,
              ),

            ),

            Divider(
              height: 100.0,
              color: Color.fromARGB(255, 19, 3, 233),
            ),

            Text(
              'NAME :',
              style: TextStyle(
                  color: Color.fromARGB(255, 232, 174, 2),
                  fontSize: 19.0,
                  letterSpacing: 2.0),
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              'SAJ',
              style: TextStyle(
                color: Color.fromARGB(255, 218, 171, 0),
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              'Current Shogon Level :',
              style: TextStyle(
                color: Color.fromARGB(255, 218, 171, 0),
                fontSize: 19.0,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              '8',
              style: TextStyle(
                color: Color.fromARGB(255, 218, 171, 0),
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              children: <Widget>[

                Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 42, 206, 1),
                ),

                SizedBox(
                  width: 10,
                ),
                
                Text('sajithlakshan199@gmail.com',
                    style: TextStyle(
                      color: Color.fromARGB(255, 218, 171, 0),
                      fontSize: 19.0,
                      letterSpacing: 2.0,
                    ))

              ],
            )

          ],
        ),
      ),
    );
    // );
  }
}
