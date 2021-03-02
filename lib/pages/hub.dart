import 'package:flutter/material.dart';
import 'package:zero_project/pages/overwatch.dart';
import 'package:zero_project/pages/home.dart';
import 'package:zero_project/pages/profile.dart';

class Alerts extends StatefulWidget {
  Alerts({Key key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.person),
              ),
              title: Text('James Carnegie'),
              subtitle: Text('located at this Street - 4:30 PM'),
              trailing: Icon(Icons.warning),
              tileColor: Colors.amber,
            ));
  }
}

class Hub extends StatefulWidget {
  const Hub({Key key}) : super(key: key);

  @override
  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 3) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Profile(friendPage: false)));
    } else {
      setState(() => {_selectedIndex = index});
    }
  }

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Overwatch(),
    Alerts(),
    Container(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Hub'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Travel'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important), label: 'Alerts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'My Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        showUnselectedLabels: true,
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
