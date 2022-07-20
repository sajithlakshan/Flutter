import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: DARK()));

class DARK extends StatefulWidget {
  @override
  _DARKState createState() => _DARKState();
}

class _DARKState extends State<DARK> {
  List<SAJI> SLL = [
    SAJI(
        author: 'Oscar Wilde',
        text1: 'Be yourself; everyone else is already taken'),
    SAJI(
        author: 'Oscar Wilde',
        text1: 'I have nothing to declare except my genius'),
    SAJI(
        author: 'Oscar Wilde',
        text1: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: SLL.map((quote) => KALUWA(DDR: quote)).toList(),
      ),
    );
  }
}
   
