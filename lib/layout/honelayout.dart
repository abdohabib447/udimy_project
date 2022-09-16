import 'package:flutter/material.dart';
class homelayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.menu),
           label: 'Tasks',

         ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'add',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'archive',

          ),
        ],
        
      ),
    );
  }
}
