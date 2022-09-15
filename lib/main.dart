import 'package:flutter/material.dart';
import 'package:udimy_project/modules/bmi_result/BMI_Result.dart';
import 'package:udimy_project/modules/bmi/counter_screen.dart';
import 'package:udimy_project/modules/massengers/massengerScreen.dart';

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

