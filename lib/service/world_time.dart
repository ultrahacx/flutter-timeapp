import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class World_Time
{

  String location;
  String time;
  String url;
  String tz;
  String ip;
  World_Time({this.location, this.url});


  Future<void> getData() async
  {
    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/$url');
      print(response.body);
      Map data = jsonDecode(response.body);
//    print(data['datetime']);
//    time = DateTime.parse(data['datetime']).add(Duration(hours: int.parse(data['utc_offset'].substring(1,3)))).toString();
      time = DateFormat.jm().format(DateTime.parse(data['datetime']).add(
          Duration(hours: int.parse(data['utc_offset'].substring(1, 3)),
              minutes: int.parse(data['utc_offset'].substring(4, 6)))));
      tz = data['timezone'] + "  " +data['utc_offset'] + " GMT";

      ip = data['client_ip'];

    }



    catch(e){
      time = 'Server linking failed';
    }

  

  }


}