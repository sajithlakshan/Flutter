import 'dart:convert';
import 'e1.dart';

class SAJ implements Function {
  String _greeting;
  SAJ(this._greeting);

  call(String name) {
    return _greeting + ' ' + name;
  }

  // alternative syntax for function
  // call(String name) => _greeting + ' '+ name;
  // => is equivalent to the return statement
}

String followUp1(String name) => 'Hey ' + name;
void main() {
  SAJ hello = new SAJ('Hello');

  print("1  :" + hello('Ali'));
  print("2  :" + Lakshab('JABBI'));
  print("3  :" + Lakshab.call('COLOMBO'));
  print("4  :" + followUp1.call('John'));
  print("5  :" + Shakabun('John', 'Misuk'));
  print("6  :" + Shakabun.call('John', 'Misuk'));
}
