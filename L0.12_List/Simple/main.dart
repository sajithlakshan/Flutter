import 'package:flutter/material.dart';
import 'sod.dart';

void main() {
  runApp(MaterialApp(home: sajith()));
}

class sajith extends StatefulWidget {
  @override
  State<sajith> createState() => _MyWidgetState();
}

//List<String> SAJ = ['AAAAAAAAA', 'BBBBBBB', 'CCCCCCCCCCC'];
List<WoNUM> SAJ = [
  WoNUM('A', 'Kosgama'),
  WoNUM('G', 'Kaluthara'),
  WoNUM('L', 'Rakhida')
];

class _MyWidgetState extends State<sajith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 159, 159, 159),
      body: Column(
        children: SAJ
            .map((PUKA) => Text('${PUKA.Vellage_name}=>${PUKA.Power_Level}'))
            .toList(),
      ),
    );
  }
}
