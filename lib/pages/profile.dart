import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            stretch: true,
            onStretchTrigger: () {
              return;
            },
            expandedHeight: 200.0,
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
                  'assets/images/trianglify-lowres1.png',
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
                height: 100.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: [
                  Text(
                    'Jo-Hann Joseph',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'currently checked in at The Moon',
                    style: TextStyle(color: Colors.grey),
                  )
                ]),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
