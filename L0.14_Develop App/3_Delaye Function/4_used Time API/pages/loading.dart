import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    var response = await http
        .get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Colombo'));
    //print(response.body);
    Map data = jsonDecode(response.body);
    print('++++++++++++++++++++++++++++');
    print(data);
    String datetime = data['datetime'];
    String offset_h = data['utc_offset'].substring(1, 3);
    String offset_m = data['utc_offset'].substring(4, 6);
    print(datetime);
    print(offset_h + "____" + offset_m);

    //Creat DateTime Object

    DateTime now = DateTime.parse(datetime);

    now = now.add(
        Duration(hours: int.parse(offset_h), minutes: int.parse(offset_m)));
    print(now);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}
