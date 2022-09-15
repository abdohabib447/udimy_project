import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMI_Result.dart';

class BMICalcscreen extends StatefulWidget {
  @override
  State<BMICalcscreen> createState() => _State();
}

class _State extends State<BMICalcscreen> {
  var isMAle =true;
  double hight=120.0;
  int weight =40;
  int age=70;
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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMAle=true;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage('assets/images/Male.jpg'),
                            height: 90, width: 90,
                          ),
                          Text('MALE' , style: TextStyle(fontSize: 30  , fontWeight: FontWeight.bold),)
                        ],
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ,
                          color: isMAle? Colors.blue: Colors.grey[400]),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
            Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMAle = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ,
                        color: !isMAle?Colors.blue : Colors.grey[400]),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/fMale.jpg'),
                          height: 120, width: 90,
                        ),
                        Text('FEMALE' , style: TextStyle(fontSize: 30  , fontWeight: FontWeight.bold),)
                      ],
                    ),
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
                          Text('${hight.round()}' , style: TextStyle(fontSize: 40  , fontWeight: FontWeight.bold),),
                          Text('CM' , style: TextStyle(fontSize: 20  , fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Slider(
                          value: hight,
                          max: 220,
                          min: 75,
                          onChanged: (value){
                           setState(() {
                             hight =value;
                           });
                          }
                      )
                    ],
                  )

                ],
              ),
            ),
          ),),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                        Text('$weight' ,  style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: () {
                              setState(() {
                                weight--;
                              });
                            } ,
                              child: Icon(Icons.remove), mini: true,),
                            FloatingActionButton(onPressed: () {
                              setState(() {
                                weight++;
                              });
                            } ,
                              child: Icon(Icons.add), mini: true,),
                      ],
                    )

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 25,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius:BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                        Text('$age' ,  style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: () {
                              var heroTag='c1';
                              setState(() {
                                age--;
                              });
                            } , child: Icon(Icons.remove), mini: true,),
                            FloatingActionButton(onPressed: () {
                              var heroTag='d--';
                              setState(() {
                                age++;
                              });
                            } , child: Icon(Icons.add), mini: true,),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),),
          Container(
            width: double.infinity,
              height: 70,
              child: MaterialButton(onPressed: () {
                var result = weight/ pow(hight/100 ,2);
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>bmiResult(
                          result: result.round(), isMale: isMAle, age: age,
                          
                        )
                    ),
                );

              }
              , child: Text('UPGRADE'), color: Colors.blueGrey,)
          ),
        ],
      ),
    );
  }
}
