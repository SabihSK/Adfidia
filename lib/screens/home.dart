import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String route = "/Home";
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold());
  }
}
