import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MapWidget {
  Widget _map;
  String _mapStyleUrl = 'mapbox://styles/jovis1667/ckl9k0bdf10g217ptf7pxi9m2';

  MapWidget({CameraPosition cameraPosition}) {
    _map = FutureBuilder<String>(
      future: getAPIKey(),
      builder: (context, snapshot) {
        Widget map;
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          map = MapboxMap(
            initialCameraPosition: cameraPosition,
            accessToken: snapshot.data,
            // styleString: _mapStyleUrl,
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
    );
  }

  Future<String> getAPIKey() {
    return Future.delayed(Duration(milliseconds: 150), () => env["API_KEY"]);
  }

  Widget getMap() {
    return _map;
  }
}
