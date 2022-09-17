 import 'dart:html';
import 'package:flutter/material.dart';

Widget defultButton({
required String textlableText,
   double width = double.infinity,
  required IconData iconprefix,
  bool isPass=false,
   IconData ?iconsuffix,
  Function ?function,
  //required Color icon,
}
    )
=> Container(
  width: width,
   child: TextFormField(
     obscureText : isPass ,
  decoration: InputDecoration(
labelText: textlableText,
    iconColor: Colors.blueGrey,
   prefix: Icon(iconprefix),
     suffixIcon: IconButton(icon: Icon (iconsuffix), onPressed: function!() ),

),
),
    );