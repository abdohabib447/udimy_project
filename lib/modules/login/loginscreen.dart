import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/shared_componant/componenets.dart';

class loginhome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
    children: [
      Text('LOG IN' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
      SizedBox( height: 20,),
    defultButton(
  textlableText: 'email',
  iconprefix: Icons.email,

  ),
  ],
    ),
    );
  }
}
