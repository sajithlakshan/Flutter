import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getData() async {
    try {
      var response = await http
          .get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      //print(response.body);
      Map data = jsonDecode(response.body);
      // print('++++++++++++++++++++++++++++');
      // print(data);
      String datetime = data['datetime'];
      String offset_h = data['utc_offset'].substring(1, 3);
      String offset_m = data['utc_offset'].substring(4, 6);
      // print(datetime);
      // print(offset_h + "____" + offset_m);

      //Creat DateTime Object

      DateTime now = DateTime.parse(datetime);

      now = now.add(
          Duration(hours: int.parse(offset_h), minutes: int.parse(offset_m)));

      time = now.toString();
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not ger time Data';
    }

    //  print(time);
  }
}
