import 'package:flutter/material.dart';
import'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List <WorldTIme> locations = [
    WorldTIme(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTIme(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTIme(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTIme(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTIme(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTIme(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTIme(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTIme(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:1.0,horizontal:4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
