import 'package:flutter/material.dart';

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

  void loadData() async {
    String message = await Future.delayed(Duration(seconds: 3), () {
      return 'Why hello there!';
    });
    print('loaded');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
    print('ummm...');
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
      body: Container(child: Text('HUB')),
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
