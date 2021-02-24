import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Overwatch extends StatefulWidget {
  Overwatch({Key key}) : super(key: key);

  @override
  _OverwatchState createState() => _OverwatchState();
}

class _OverwatchState extends State<Overwatch> {
  Future<String> temp = Future.delayed(Duration(milliseconds: 150), () {
    return env["API_KEY"];
  });

  // Future<String> getAPIKey() async {
  //   Response response = await get('http://192.168.1.7:3002/api_key');
  //   Map apiKey = jsonDecode(response.body);
  //   return apiKey['priv_mapbox_key'];
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<String>(
      future: temp,
      builder: (context, snapshot) {
        Widget map;
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          map = MapboxMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(17.14019, -61.79251), zoom: 10.0),
            accessToken: snapshot.data,
            styleString: 'mapbox://styles/jovis1667/ckl9k0bdf10g217ptf7pxi9m2',
          );
        } else if (snapshot.hasError) {
          map = Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map,
                    color: Colors.grey,
                  )
                ],
              ),
              Text(
                snapshot.error,
                style: TextStyle(color: Colors.grey),
              )
            ],
          );
        } else {
          map = SizedBox(
            child: CircularProgressIndicator(),
            width: 100.0,
            height: 100.0,
          );
        }
        return map;
      },
    ));
  }
}
