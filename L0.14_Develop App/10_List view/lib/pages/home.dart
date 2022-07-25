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
    print(data);
    String Time_1 = '';
    String Lock = '';
    String byI = '';
    var Bcolor;
    setState(() {
      if (data != null) {
        Lock = data['location_1'];
        Time_1 = data['time_1'];
        byI = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
        Bcolor =
            data['isDaytime'] ? Colors.amber : Color.fromARGB(255, 0, 0, 0);
      }
    });

    return Scaffold(
      backgroundColor: Bcolor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$byI'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
          child: Column(
            children: <Widget>[
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 6, 223, 96),
                ),
                icon: Icon(
                  Icons.edit_location,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
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
        ),
      )),
    );
  }
}
