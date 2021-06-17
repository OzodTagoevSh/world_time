import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime('Almaty', 'kazakhstan.png', "Asia/Almaty",),
    WorldTime('Amman', 'oman.png', "Asia/Amman"),
    WorldTime('Anadyr', 'russia.png', "Asia/Anadyr"),
   /* WorldTime("Asia/Aqtau"),
    WorldTime("Asia/Aqtobe"),
    WorldTime("Asia/Ashgabat"),
    WorldTime("Asia/Atyrau"),
    WorldTime("Asia/Baghdad"),
    WorldTime("Asia/Baku"),
    WorldTime("Asia/Bangkok"),
    WorldTime("Asia/Barnaul"),
    WorldTime("Asia/Beirut"),
    WorldTime("Asia/Bishkek"),
    WorldTime("Asia/Brunei"),
    WorldTime("Asia/Chita"),
    WorldTime("Asia/Choibalsan"),
    WorldTime("Asia/Colombo"),
    WorldTime("Asia/Damascus"),
    WorldTime("Asia/Dhaka"),
    WorldTime("Asia/Dili"),
    WorldTime("Asia/Dubai"),
    WorldTime("Asia/Dushanbe"),
    WorldTime("Asia/Famagusta"),
    WorldTime("Asia/Gaza"),
    WorldTime("Asia/Hebron"),
    WorldTime("Asia/Ho_Chi_Minh"),
    WorldTime("Asia/Hong_Kong"),
    WorldTime("Asia/Hovd"),
    WorldTime("Asia/Irkutsk"),
    WorldTime("Asia/Jakarta"),
    WorldTime("Asia/Jayapura"),
    WorldTime("Asia/Jerusalem"),
    WorldTime("Asia/Kabul"),
    WorldTime("Asia/Kamchatka"),
    WorldTime("Asia/Karachi"),
    WorldTime("Asia/Kathmandu"),
    WorldTime("Asia/Khandyga"),
    WorldTime("Asia/Kolkata"),
    WorldTime("Asia/Krasnoyarsk"),
    WorldTime("Asia/Kuala_Lumpur"),
    WorldTime("Asia/Kuching"),
    WorldTime("Asia/Macau"),
    WorldTime("Asia/Magadan"),
    WorldTime("Asia/Makassar"),
    WorldTime("Asia/Manila"),
    WorldTime("Asia/Nicosia"),
    WorldTime("Asia/Novokuznetsk"),
    WorldTime("Asia/Novosibirsk"),
    WorldTime("Asia/Omsk"),
    WorldTime("Asia/Oral"),
    WorldTime("Asia/Pontianak"),
    WorldTime("Asia/Pyongyang"),
    WorldTime("Asia/Qatar"),
    WorldTime("Asia/Qostanay"),
    WorldTime("Asia/Qyzylorda"),
    WorldTime("Asia/Riyadh"),
    WorldTime("Asia/Sakhalin"),
    WorldTime("Asia/Samarkand"),
    WorldTime("Asia/Seoul"),
    WorldTime("Asia/Shanghai"),
    WorldTime("Asia/Singapore"),
    WorldTime("Asia/Srednekolymsk"),
    WorldTime("Asia/Taipei"),
    WorldTime("Asia/Tashkent"),
    WorldTime("Asia/Tbilisi"),
    WorldTime("Asia/Tehran"),
    WorldTime("Asia/Thimphu"),
    WorldTime("Asia/Tokyo"),
    WorldTime("Asia/Tomsk"),
    WorldTime("Asia/Ulaanbaatar"),
    WorldTime("Asia/Urumqi"),
    WorldTime("Asia/Ust-Nera"),
    WorldTime("Asia/Vladivostok"),
    WorldTime("Asia/Yakutsk"),
    WorldTime("Asia/Yangon"),
    WorldTime("Asia/Yekaterinburg"),
    WorldTime("Asia/Yerevan"),

    */
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {

              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('assets/${locations[index].flag}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
