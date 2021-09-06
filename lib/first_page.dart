import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class first_page extends StatefulWidget {
  @override
  _first_pageState createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  int leftNumber=1;
  int rightNumber=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Dicee',
            style: TextStyle(color: Colors.white,fontSize: 30),),
            Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset('images/dice$leftNumber.png'))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset('images/dice$rightNumber.png'))),
              ],
            ),
            FlatButton(
              padding: EdgeInsets.all(15),
                color: Colors.white, onPressed: () {
                setState(() {
                  leftNumber=Random().nextInt(6)+1;
                  rightNumber=Random().nextInt(6)+1;
                });

            }, child: Text('Play',style: TextStyle(fontSize: 25),)),
          ],
        ),
      ),
    );
  }
}
