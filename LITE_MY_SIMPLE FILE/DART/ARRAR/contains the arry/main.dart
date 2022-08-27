import 'e1.dart';

void main() {
// Creating list
  var myList = [20, 15, 37, 23, 60, 50, 20];
  // Item to be found
  int searchItem = 23;
  // stores boolean in variable found
  bool found = myList.contains(searchItem);

  if (found) {
    print("$searchItem is present in the list");
  } else {
    print("$searchItem is not present in the list");
  }
}
