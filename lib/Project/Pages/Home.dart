import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  String bgImage = 'day.png';

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)!.settings.arguments as Map;
    bgImage = data!['isDayTime'] ? 'day.jpg' : 'night.jpg';
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/$bgImage'),
        fit: BoxFit.cover,
      )),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      dynamic response =
                          await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': response['time'],
                          'location': response['location'],
                          'flag': response['flag'],
                          'isDayTime': response['isDayTime'],
                        };
                      });
                    },
                    label: Text(
                      'Edite locaction',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${data!['location']}',
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 2.0,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '${data!['time']}',
                    style: TextStyle(
                      fontSize: 66,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
          )),
    )));
  }
}
