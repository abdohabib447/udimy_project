import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('My Firist App'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.access_alarm_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_rounded)),
          // Icon(Icons.ac_unit_rounded)
        ],
        elevation: 100,
        shadowColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.access_alarms_rounded,
              size: 100.0,
              color: Colors.amber,
            ),
          ],
        ),
      )),
    );
  }
}
