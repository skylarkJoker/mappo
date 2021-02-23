import 'package:flutter/material.dart';
import 'package:zero_project/pages/map.dart';
import 'package:zero_project/pages/home.dart';

class Hub extends StatefulWidget {
  const Hub({Key key}) : super(key: key);

  @override
  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => {_selectedIndex = index});
  }

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Overwatch(),
    Container(
      child: Text('Profile'),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        title: Text('Hub'),
        centerTitle: true,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Travel'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'My Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[500],
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.priority_high),
        backgroundColor: Colors.redAccent[700],
      ),
    );
  }
}
