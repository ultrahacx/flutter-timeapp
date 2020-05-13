import 'package:fluff/service/world_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {


  void setup_worldTime () async
  {
    World_Time set_time = World_Time(location: 'India', url: 'Asia/Kolkata');
    await set_time.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': set_time.location,
      'time': set_time.time,
      'tz' :set_time.tz,
      'ip': set_time.ip,
    });

  }

  @override
  void initState(){
    super.initState();
    setup_worldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,

        ),
      ),
    );
  }
}
