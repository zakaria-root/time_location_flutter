import 'package:flutter/material.dart';
import 'package:untitled/Project/Services/WorldTime.dart';

class Loacation extends StatefulWidget {
  const Loacation({Key? key}) : super(key: key);

  @override
  State<Loacation> createState() => _LoacationState();
}

class _LoacationState extends State<Loacation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'London.jpg', url: 'Europe/London'),
    WorldTime(location: 'Berlin', flag: 'Berlin.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'Cairo.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'Nairobi.png', url: 'Africa/Nairobi'),
    WorldTime(
        location: 'New York', flag: 'NewYork.png', url: 'America/New_York'),
    WorldTime(location: 'Chicago', flag: 'Chicago.png', url: 'America/Chicago'),
    WorldTime(location: 'Seoul', flag: 'seoul.jpg', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: 'Jakarta.png', url: 'Asia/Jakarta'),
  ];

  void updateTime(index) async {
    WorldTime worldTime = locations[index];
    while (worldTime.time == 'could not get time data') {
      await worldTime.getTime();
    }

    Navigator.pop(context, {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.time,
      'isDayTime': worldTime.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chose Location'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text("${locations[index].location}",
                      textAlign: TextAlign.center),
                ),
              ),
            );
          }),
    );
  }
}
