import 'package:flutter/material.dart';

class HOME extends StatefulWidget {
  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    String Time_1 = '';
    String Lock = '';
    setState(() {
      if (data != null) {
        Lock = data['location_1'];
        Time_1 = data['time_1'];
      }
    });

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
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
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  Lock,
                  style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Text(Time_1, style: TextStyle(fontSize: 66.0, letterSpacing: 2.0))
          ],
        ),
      )),
    );
  }
}
