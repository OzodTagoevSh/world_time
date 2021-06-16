import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // location for UI
  String? time; // time for that location
  String flag; // flag for the location
  String url; // url for setting the time of that location
  bool? isDayTime; // true if it is Day time, false otherwise

  WorldTime(this.location, this.flag, this.url);

  Future<void> getTime() async {
    try {
      // make the request
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      // getting properties from the requested data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      //print(dateTime);
      //print(offset);

      // creating DateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 5 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);

    } catch (e) {
      print('caught error: $e');
      time = 'Could not get the time needed';
    }
  }

}