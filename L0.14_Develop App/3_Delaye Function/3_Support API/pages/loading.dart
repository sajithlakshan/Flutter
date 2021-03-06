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
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    //print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
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
