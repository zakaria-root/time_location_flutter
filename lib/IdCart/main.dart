import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:ProfilePage(),
  ));
}


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ZIKO ID Cart'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            currentLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 50.0,
              ),
            ),
            const SizedBox(height: 80.0),
            const Text('NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 5.0),
            const Text('Zakaria',
              style:TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
        ),
            const SizedBox(height: 30.0),
            const Text('CURRENT ZIKO LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 5.0),
            Text('$currentLevel',
              style:TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children:[
                Icon(
                    Icons.email,
                    color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0),
                Text('elmourtazakezia@gmail.com',
                style:TextStyle(
                  color:Colors.grey[400],
                  fontSize: 18.0,
                ))
              ]
            )

          ],
        )

      )
    );
  }
}
