import 'package:flutter/material.dart';

class MyHistory extends StatelessWidget {
  const MyHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Travel History'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print('tapped');
                },
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.teal,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jo-Hann Joseph',
                                    style: textTheme.subtitle2,
                                  ),
                                  Text(
                                    'October 23, 2020 at 5:37 AM - Saint John',
                                    style: textTheme.caption,
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('My trip to south', style: textTheme.headline5),
                        ],
                      ),
                    ),
                    Ink(
                      color: Colors.grey,
                      height: 350,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
