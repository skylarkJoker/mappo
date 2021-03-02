import 'package:flutter/material.dart';
import 'package:zero_project/pages/settings.dart';
import 'package:zero_project/pages/circles.dart';

class Profile extends StatelessWidget {
  const Profile({Key key, this.friendPage}) : super(key: key);

  final bool friendPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Settings();
                }))
              },
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
              radius: 50,
            ),
            SizedBox(
              height: 20.0,
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
            friendPage
                ? Container(
                    color: Colors.grey,
                    height: 300,
                  )
                : Expanded(
                    child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.history),
                        title: Text('My Travel History'),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => Navigator.pushNamed(context, '/myhistory'),
                      ),
                      Divider(
                        color: Colors.grey,
                        indent: 30.0,
                      ),
                      ListTile(
                        leading: Icon(Icons.group),
                        title: Text('My Travitt Circle'),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Circles())),
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
                    ],
                  ))
          ],
        ));
  }
}
