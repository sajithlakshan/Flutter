import 'e1.dart';

void main() {
  final numbers = <int>[1, 2, 3, 5, 6, 7];
  final HH = [];

  var result = numbers.where((x) {
    int Y = x + 5;
    HH.add(Y);
    print("X :" + x.toString() + " : " + "Y :" + Y.toString());
    return Y < 10;
  });
  print(result.toList());
  print(HH);
}
