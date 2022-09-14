import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMICalcscreen extends StatefulWidget {
  @override
  State<BMICalcscreen> createState() => _State();
}

class _State extends State<BMICalcscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Icon(Icons.ac_unit_outlined , size: 70,),
                        Text('MALE' , style: TextStyle(fontSize: 30  , fontWeight: FontWeight.bold),)
                      ],
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color: Colors.grey[400]),
                  ),
                ),
                SizedBox(width: 20,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color: Colors.grey[400]),
                  child: Column
                  (
                    children: [
                      Icon(Icons.ac_unit_outlined , size: 70,),
                      Text('FEMALE' , style: TextStyle(fontSize: 30  , fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),),
              ],
            ),
          ),),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color: Colors.grey[400]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('HIGHT' , style: TextStyle(fontSize: 30  , fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('180' , style: TextStyle(fontSize: 40  , fontWeight: FontWeight.bold),),
                          Text('CM' , style: TextStyle(fontSize: 20  , fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Slider(
                          value: 120,
                          max: 220,
                          min: 75,
                          onChanged: (value){
                            print(value);
                          }
                      )
                    ],
                  )

                ],
              ),
            ),
          ),),
          Expanded(child: Column(
            children: [

            ],
          ),),
          MaterialButton(onPressed: () {}, child: Text('UPGRADE'),),
        ],
      ),
    );
  }
}
