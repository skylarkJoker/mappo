import 'package:flutter/material.dart';

class Wizard extends StatefulWidget {
  const Wizard({Key key}) : super(key: key);

  @override
  _WizardState createState() => _WizardState();
}

class _WizardState extends State<Wizard> {
  @override
  void initState() {
    super.initState();
  }

  final controller = PageController(initialPage: 0);

  List content = [
    {
      'icon': Icons.place_outlined,
      'title': 'Choose your destination',
      'text': 'Using the navigation feauture, select where you want to go!',
    },
    {
      'icon': Icons.navigation_outlined,
      'title': 'Select your prefered route',
      'text':
          'Pick your path to your destination based on stops or available transportation',
    },
    {
      'icon': Icons.photo_camera_outlined,
      'title': 'Take a picture',
      'text':
          'Let your friends know that your traveling in style! Also makes it easy for them to find you in a crowd :)',
    },
  ];

  Widget wizardPage({IconData icon, String title, String text}) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icon, size: 170, color: Colors.teal),
      SizedBox(
        height: 30,
      ),
      Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 200,
        child: Text(
          text,
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      )
    ]);
  }

  Widget dots(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.teal : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular((12)))),
    );
  }

  int _currentPage = 0;
  bool _lastPage = false;
  bool _firstPage = true;

  void prevPageButton() {
    controller.previousPage(
        duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  void nextPageButton() {
    if (_lastPage)
      Navigator.pushReplacementNamed(context, '/');
    else
      controller.nextPage(
          duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  void onPageChange(int page) {
    setState(() {
      _currentPage = page;
    });
    if (_currentPage == content.length - 1)
      setState(() {
        _lastPage = true;
      });
    else
      setState(() {
        _lastPage = false;
      });

    if (_currentPage == 0)
      setState(() {
        _firstPage = true;
      });
    else
      setState(() {
        _firstPage = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        PageView.builder(
            controller: controller,
            onPageChanged: (page) {
              onPageChange(page);
            },
            itemCount: content.length,
            itemBuilder: (context, index) {
              return wizardPage(
                  icon: content[index]['icon'],
                  title: content[index]['title'],
                  text: content[index]['text']);
            }),
        Container(
          // margin: EdgeInsets.only(bottom: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (int i = 0; i < content.length; i++)
                    if (i == _currentPage) dots(true) else dots(false)
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: <Widget>[
                  _firstPage
                      ? Container()
                      : Expanded(
                          child: FlatButton(
                            onPressed: () {
                              prevPageButton();
                            },
                            child: Text('BACK'),
                          ),
                        ),
                  Expanded(
                    child: FlatButton(
                      height: 50,
                      onPressed: () {
                        nextPageButton();
                      },
                      child: _lastPage ? Text('FINISH') : Text('NEXT'),
                      color: Colors.teal,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
