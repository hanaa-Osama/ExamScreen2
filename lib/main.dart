import 'package:flutter/material.dart';

import 'screenTwo.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ScreenTwo(),
    );
  }
}