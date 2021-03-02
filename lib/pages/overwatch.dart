import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:zero_project/components/map.dart';

class Overwatch extends StatefulWidget {
  Overwatch({Key key}) : super(key: key);

  @override
  _OverwatchState createState() => _OverwatchState();
}

class _OverwatchState extends State<Overwatch> {
  MapWidget map;

  @override
  void initState() {
    super.initState();
    map = new MapWidget(
        cameraPosition:
            CameraPosition(target: LatLng(17.0945, -61.7645), zoom: 12));
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: map.getMap());
  }
}
