import 'package:flutter/material.dart';
import 'package:udimy_project/counter_screen.dart';
import 'package:udimy_project/massengerScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      home: BMICalcscreen(),
    );
  }

  }

