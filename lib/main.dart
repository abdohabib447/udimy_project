import 'package:flutter/material.dart';
import 'package:udimy_project/layout/honelayout.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      home: homelayout(),
    );
  }

  }

