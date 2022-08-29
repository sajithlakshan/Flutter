import 'package:flutter/material.dart';
import 'Sc.dart';

void main() {
  runApp(MaterialApp(
    home: HOME(),
  ));
}

class HOME extends StatefulWidget {
  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  /////////////////////////////////////////////////////////////////////////////////////////////////////
  String value = 'Wating Data ';
  /////////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /////////////////////////////////////////////////////////////////////////////////////////////////////
          Text(value),
          /////////////////////////////////////////////////////////////////////////////////////////////////////
          ElevatedButton(
            /////////////////////////////////////////////////////////////////////////////////////////////////////
            ///
            ///
            onPressed: () async {
              // ignore: avoid_print
              final newvalue =
                  await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ));
              setState(() => this.value = newvalue);
            },
            /////////////////////////////////////////////////////////////////////////////////////////////////////
            child: const Text('To go 2 th Screen'),
          )
        ],
      ),
    );
  }
}
