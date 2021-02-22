import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.article,
                color: Colors.grey,
                size: 100.0,
              ),
            ],
          ),
          Text(
            'There doesn' 't seem to be anything here',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
