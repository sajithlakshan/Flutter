import 'e1.dart';

void main() {
  var list = ["John", "Doe", "Smith", "Alex"];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
  print("---------------------------------------------");
  final numbers = <int>[1, 2, 3, 5, 6, 7];
  var result = numbers.where((x) {
    return x < 5;
  }); // (1, 2, 3)
  print(result);
  print("---------------------------------------------");
  result = numbers.where((x) => x > 5);
  print(result.toList());

}
