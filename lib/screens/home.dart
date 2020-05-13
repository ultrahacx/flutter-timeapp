import 'package:flutter/material.dart';
import 'package:fluff/service/background.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map rec_data = {};

  @override
  Widget build(BuildContext context) {
    rec_data = ModalRoute.of(context).settings.arguments;

    return Scaffold(

        resizeToAvoidBottomInset: false,
        body: Stack(children: <Widget>[
          Background(),

          SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.only(top: 150, bottom: 150),
              child: Column(
                children: <Widget>[
                  Center(
                    child: FlatButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/location');
                        },
                        icon: Icon(Icons.add_location),
                        label: Text('Select Location')),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      rec_data['location'],
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      rec_data['time'],
                      style: TextStyle(
                          fontSize: 65,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Timezone: ' + rec_data['tz'],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'IP Address: ' + rec_data['ip'],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
