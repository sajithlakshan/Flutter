import 'package:f2/pages/home.dart';
import 'package:f2/pages/choose_location.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/home',
        routes: {
          '/home': (context) => HOME(),
          '/lOC': (context) => ChooseLocation(),
        },
      ),
    );
