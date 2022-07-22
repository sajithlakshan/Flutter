import 'dart:ffi';

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String UserName = await Future.delayed(Duration(seconds: 3), () {
      return 'Rima';
    });
    String Bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Rima';
    });
    print('$UserName - $Bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('Hiii');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 117, 3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 255, 48),
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose location Screen'),
    );
  }
}
