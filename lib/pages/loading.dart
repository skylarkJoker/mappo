import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void loadMap() async {
    Response res = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map todos = jsonDecode(res.body);
    print(todos);
    print(todos['title']);
  }

  @override
  void initState() {
    super.initState();
    loadMap();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
