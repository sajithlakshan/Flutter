import 'package:flutter/material.dart';
import 'package:f2/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> setupWordTime() async {
    WorldTime instance = WorldTime(
        location: 'America', flag: 'America.png', url: 'America/Los_Angeles');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location_1': instance.location,
      'flag_1': instance.flag,
      'time_1': instance.time,
      'isDaytime': instance.isDaytime,
    });

    //print(time);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
          child: SpinKitRotatingCircle(
        color: Colors.white,
        size: 50.0,
      )),
    );
  }
}
