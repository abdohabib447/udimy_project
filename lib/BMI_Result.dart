import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmiResult extends StatelessWidget {
   final int result;
   final bool isMale ;
   final int age ;
    bmiResult(
        {required this.result,
          required this.isMale,
          required this.age,}
        );






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI   RESULT"),
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios_new_rounded), onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Gender : ${isMale? 'male' : 'female'}',
        style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 40),),
            Text('Age : $age' , style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 40),),
            Text('Result  : $result' ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 40),),
    ],
        ),
      ),
    );
  }
}
