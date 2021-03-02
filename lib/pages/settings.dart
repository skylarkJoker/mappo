import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final List _settingList = [
    {
      'leading': Icon(Icons.language),
      'title': 'Select Language',
      'trailing': Text('English, US')
    },
    {
      'leading': Icon(Icons.do_not_disturb),
      'title': 'Remove Ads',
      'trailing': Switch(
        onChanged: null,
        activeColor: Colors.teal,
        value: false,
      )
    },
    {
      'leading': Icon(Icons.brightness_4_outlined),
      'title': 'Dark Mode',
      'trailing': Switch(
        onChanged: null,
        activeColor: Colors.teal,
        value: false,
      )
    },
    {
      'leading': Icon(Icons.notifications),
      'title': 'Notifications',
      'trailing': null
    },
    {
      'leading': Icon(Icons.rate_review_outlined),
      'title': 'Rate the App',
      'trailing': null
    },
    {
      'leading': Icon(Icons.school_outlined),
      'title': 'Tutorial',
      'trailing': null
    },
    {'leading': Icon(Icons.help), 'title': 'Help & Feedback', 'trailing': null},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.teal,
        ),
        body: ListView.separated(
            itemCount: _settingList.length,
            separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                ),
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () => print('setting'),
                  child: ListTile(
                    leading: _settingList[index]['leading'],
                    title: Text(_settingList[index]['title']),
                    trailing: _settingList[index]['trailing'],
                  ));
            }));
  }
}
