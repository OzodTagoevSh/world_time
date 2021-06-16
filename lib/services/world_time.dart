import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; // location for UI
  String? time; // time for that location
  String flag; // flag for the location
  String url; // url for setting the time of that location

  WorldTime(this.location, this.flag, this.url);

  Future<void> getTime() async {

    // make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    // getting properties from the requested data
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    //print(dateTime);
    //print(offset);

    // creating DateTime object
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();

  }

}