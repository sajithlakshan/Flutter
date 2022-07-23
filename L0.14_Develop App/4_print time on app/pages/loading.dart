import 'package:flutter/material.dart';
import 'package:f2/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

String time = 'loading';

class _LoadingState extends State<Loading> {
  Future<void> setupWordTime() async {
    WorldTime instance = WorldTime(
        location: 'America', flag: 'America.png', url: 'America/Los_Angeles');
    await instance.getData();

    setState(() {
      time = instance.time;
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
        child: Text(time),
      ),
    );
  }
}
