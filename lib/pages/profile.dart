import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.teal,
          expandedHeight: 200,
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {},
            ),
          ],
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/lowpoly.png',
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                bottom: -50,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                  ),
                ),
              ),
            ],
            overflow: Overflow.visible,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 80.0,
          ),
          Center(
            child: Text(
              'Jo-Hann Joseph',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'checked in at The Moon @11:00AM',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('My travel history'),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(
            color: Colors.grey,
            indent: 30.0,
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('My Travitt Groups'),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(
            color: Colors.grey,
            indent: 30.0,
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text('My Notes'),
            trailing: Icon(Icons.navigate_next),
          ),
        ]))
      ],
    ));
  }
}
