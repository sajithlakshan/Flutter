import 'package:flutter/material.dart';
import 'quote.dart';

class KALUWA extends StatelessWidget {
  late final SAJI DDR;
  // KALUWA({required this.DDR});

  KALUWA({SAJI? DDR}) {
    this.DDR = DDR!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                DDR.text1,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                DDR.author2,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ));
  }
}
