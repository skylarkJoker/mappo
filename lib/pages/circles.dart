import 'package:flutter/material.dart';
import 'package:zero_project/pages/profile.dart';

class Circles extends StatelessWidget {
  const Circles({Key key}) : super(key: key);

  final List myList = const [
    {'title': 'Johnny Bravo', 'subtitle': 'checked in at The Moon at 5:30 AM'},
    {'title': 'Jovis Burg', 'subtitle': 'checked in at The Moon at 5:30 AM'},
    {'title': 'Joey Xavier', 'subtitle': 'checked in at The Moon at 5:30 AM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Travitt Circle'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: null,
          child: Icon(Icons.person_add),
        ),
        body: Column(children: [
          Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search', prefixIcon: Icon(Icons.search)),
            ),
          ),
          Expanded(
            child: myList != null
                ? ListView.builder(
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile(
                                      friendPage: true,
                                    ))),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.teal,
                        ),
                        title: Text(myList[index]['title']),
                        subtitle: Text(myList[index]['subtitle']),
                      );
                    })
                : Container(),
          ),
        ]));
  }
}
