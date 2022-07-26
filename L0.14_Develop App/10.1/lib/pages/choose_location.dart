import 'package:flutter/material.dart';
import 'package:f2/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations_1 = [
    WorldTime(location: 'America', flag: 'am.jpg', url: 'America/Los_Angeles'),
    WorldTime(location: 'Sri Lanka', flag: 'sri.png', url: 'Asia/Colombo'),
    WorldTime(location: 'japan', flag: 'jap.png', url: 'Asia/Tokyo'),
    WorldTime(location: 'Russia', flag: 'Rus.jpg', url: 'Europe/Moscow'),
    WorldTime(location: 'Australia', flag: 'Aus.jpg', url: 'Australia/Sydney'),
    WorldTime(location: 'Norway', flag: 'Nor.jpg', url: 'Europe/Oslo'),
    WorldTime(location: ' Italy', flag: 'ita.png', url: 'Europe/Rome'),
    WorldTime(location: 'England', flag: 'Eng.png', url: 'Europe/London'),
  ];
  void updateTime(index) async {
    WorldTime instance = locations_1[index];
    await instance.getData();
    Navigator.pop(context, {
      'location_1': instance.location,
      'flag_1': instance.flag,
      'time_1': instance.time,
      'isDaytime': instance.isDaytime,
    });
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
        body: ListView.builder(
            itemCount: locations_1.length,
            itemBuilder: (context, index) {
              print(index);
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      print(locations_1[index].location);
                      updateTime(index);
                    },
                    title: Text(locations_1[index].location),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/${locations_1[index].flag}'),
                    ),
                  ),
                ),
              );
            }));
  }
}
