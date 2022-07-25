import 'package:flutter/material.dart';
import 'package:f2/services/world_time.dart';

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
      'time_1': instance.time
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
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('Loading'),
      ),
    );
  }
}
