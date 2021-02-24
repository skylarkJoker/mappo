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

  List<Widget> wizardPages = [
    Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.location_city), Text('Chose your destination!')]),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.car_rental), Text('Choose your transport!')],
      ),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.camera), Text('Take a picture of your outfit')],
      ),
    )
  ];

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

  int _currentPage = 1;

  void onPageChange(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        PageView.builder(
            controller: controller,
            onPageChanged: (page) {
              onPageChange(page);
            },
            itemCount: wizardPages.length,
            itemBuilder: (context, index) {
              return wizardPages[index];
            }),
        Container(
          margin: EdgeInsets.only(bottom: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (int i = 0; i < wizardPages.length; i++)
                if (i == _currentPage) dots(true) else dots(false)
            ],
          ),
        )
      ]),
    ));
  }
}
