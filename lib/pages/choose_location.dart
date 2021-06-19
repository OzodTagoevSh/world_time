import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime('Almaty', 'kazakhstan.png', 'Asia/Almaty',),
    WorldTime('Amman', 'oman.png', "Asia/Amman"),
    WorldTime('Anadyr', 'russia.png', "Asia/Anadyr"),
    WorldTime('Aqtau', 'kazakhstan.png', "Asia/Aqtau"),
    WorldTime('Aqtobe', 'kazakhstan.png', "Asia/Aqtobe"),
    WorldTime('Ashgabat', 'turkmenistan.png', "Asia/Ashgabat"),
    WorldTime('Atyrau', 'kazakhstan.png', "Asia/Atyrau"),
    WorldTime('Baghdad', 'iraq.png', "Asia/Baghdad"),
    WorldTime('Baku', 'azerbaijan.png', "Asia/Baku"),
    WorldTime('Bangkok', 'thailand.png', "Asia/Bangkok"),
    WorldTime('Barnaul', 'russia.png', "Asia/Barnaul"),
    WorldTime('Beirut', 'lebanon.png', "Asia/Beirut"),
    WorldTime('Bishkek', 'kyrgyzstan.png', "Asia/Bishkek"),
    WorldTime('Brunei', 'brunei.png', "Asia/Brunei"),
    WorldTime('Chita', 'russia.png', "Asia/Chita"),
    WorldTime('Choibalsan', 'mongolia.png', "Asia/Choibalsan"),
    WorldTime('Colombo', 'sri-lanka.png', "Asia/Colombo"),
    WorldTime('Damascus', 'syria.png', "Asia/Damascus"),
    WorldTime('Dhaka', 'bangladesh.png', "Asia/Dhaka"),
    WorldTime('Dili', 'timor-leste.png', "Asia/Dili"),
    WorldTime('Dubai', 'united-arab-emirates.png', "Asia/Dubai"),
    WorldTime('Dushanbe', 'tajikistan.png', "Asia/Dushanbe"),
    WorldTime('Famagusta', 'cyprus.png', "Asia/Famagusta"),
    WorldTime('Gaza', 'palestine.png', "Asia/Gaza"),
    WorldTime('Hebron', 'palestine.png', "Asia/Hebron"),
    WorldTime('Ho Chi Minh', 'vietnam.png', "Asia/Ho_Chi_Minh"),
    WorldTime('Hong Kong', 'china.png', "Asia/Hong_Kong"),
    WorldTime('Hovd', 'mongolia.png', "Asia/Hovd"),
    WorldTime('Irkutsk', 'russia.png', "Asia/Irkutsk"),
    WorldTime('Jakarta', 'indonesia.png', "Asia/Jakarta"),
    WorldTime('Jayapura', 'indonesia.png', "Asia/Jayapura"),
    WorldTime('Jerusalem', 'palestine.png', "Asia/Jerusalem"),
    WorldTime('Kabul', 'afghanistan.png', "Asia/Kabul"),
    WorldTime('Kamchatka', 'russia.png', "Asia/Kamchatka"),
    WorldTime('Karachi', 'pakistan.png', "Asia/Karachi"),
    WorldTime('Kathmandu', 'nepal.png', "Asia/Kathmandu"),
    WorldTime('Khandyga', 'russia.png', "Asia/Khandyga"),
    WorldTime('Kolkata', 'india.png', "Asia/Kolkata"),
    WorldTime('Krasnoyarsk', 'russia.png', "Asia/Krasnoyarsk"),
    WorldTime('Kuala Lumpur', 'malaysia.png', "Asia/Kuala_Lumpur"),
    WorldTime('Kuching', 'malaysia.png', "Asia/Kuching"),
    WorldTime('Macau', 'china.png', "Asia/Macau"),
    WorldTime('Magadan', 'russia.png', "Asia/Magadan"),
    WorldTime('Makassar', 'indonesia.png', "Asia/Makassar"),
    WorldTime('Manila', 'philippines.png', "Asia/Manila"),
    WorldTime('Nicosia', 'cyprus.png', "Asia/Nicosia"),
    WorldTime('Novokuznetsk', 'russia.png', "Asia/Novokuznetsk"),
    WorldTime('Novosibirsk', 'russia.png', "Asia/Novosibirsk"),
    WorldTime('Omsk', 'russia.png', "Asia/Omsk"),
    WorldTime('Oral', 'kazakhstan.png', "Asia/Oral"),
    WorldTime('Pontianak', 'indonesia.png', "Asia/Pontianak"),
    WorldTime('Pyongyang', 'north-korea.png', "Asia/Pyongyang"),
    WorldTime('Qatar', 'qatar.png', "Asia/Qatar"),
    WorldTime('Qostanay', 'kazakhstan.png', "Asia/Qostanay"),
    WorldTime('Qyzylorda', 'kazakhstan.png', "Asia/Qyzylorda"),
    WorldTime('Riyadh', 'saudi-arabia.png', "Asia/Riyadh"),
    WorldTime('Sakhalin', 'russia.png', "Asia/Sakhalin"),
    WorldTime('Samarkand', 'uzbekistan.png', "Asia/Samarkand"),
    WorldTime('Seoul', 'south-korea.png', "Asia/Seoul"),
    WorldTime('Shanghai', 'china.png', "Asia/Shanghai"),
    WorldTime('Singapore', 'singapore.png', "Asia/Singapore"),
    WorldTime('Srednekolymsk', 'russia.png', "Asia/Srednekolymsk"),
    WorldTime('Taipei', 'china.png', "Asia/Taipei"),
    WorldTime('Tashkent', 'uzbekistan.png', "Asia/Tashkent"),
    WorldTime('Tbilisi', 'georgia.png', "Asia/Tbilisi"),
    WorldTime('Tehran', 'iran.png', "Asia/Tehran"),
    WorldTime('Thimphu', 'bhutan.png', "Asia/Thimphu"),
    WorldTime('Tokyo', 'japan.png', "Asia/Tokyo"),
    WorldTime('Tomsk', 'russia.png', "Asia/Tomsk"),
    WorldTime('Ulaanbaatar', 'mongolia.png', "Asia/Ulaanbaatar"),
    WorldTime('Urumqi', 'china.png', "Asia/Urumqi"),
    WorldTime('Ust Nera', 'russia.png', "Asia/Ust-Nera"),
    WorldTime('Vladivostok', 'russia.png', "Asia/Vladivostok"),
    WorldTime('Yakutsk', 'russia.png', "Asia/Yakutsk"),
    WorldTime('Yangon', 'myanmar.png', "Asia/Yangon"),
    WorldTime('Yekaterinburg', 'russia.png', "Asia/Yekaterinburg"),
    WorldTime('Yerevan', 'armenia.png', "Asia/Yerevan"),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    //navigate to the home screen
    Navigator.pop(context, {
      'location' : instance.location,
      'flag' : instance.flag,
      'isDayTime' : instance.isDayTime,
      'time' : instance.time,
    });

    print(instance.location);
    print(instance.flag);
    print(instance.time);
    print(instance.isDayTime);

  }

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
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(
                  locations[index].location,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  radius: 47.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
