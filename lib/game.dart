import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  int leftNubmer=1;
  int rightNubmer=1;
  String leftResult='';
  String rightResult='';
  List<Widget> leftList = [];
  List<Widget> rightList = [];

  changeCard(){
    setState(() {
      leftNubmer=Random().nextInt(3)+1;
      rightNubmer=Random().nextInt(3)+1;
      if(leftNubmer==1 && rightNubmer==2) {
        leftResult = 'winner';
        rightResult = 'loser';
        leftList.add(Icon(Icons.check , color: Colors.green));
        rightList.add(Icon(Icons.clear, color: Colors.red,));
      }
      else if(leftNubmer==2  && rightNubmer==1)
      {
      leftResult='loser';
      rightResult='winner';
      rightList.add(Icon(Icons.check , color: Colors.green));
      leftList.add(Icon(Icons.clear, color: Colors.red,));
      }
      else if(leftNubmer==1 && rightNubmer==3)
      {
      leftResult='loser';
      rightResult='winner';
      rightList.add(Icon(Icons.check , color: Colors.green));
      leftList.add(Icon(Icons.clear, color: Colors.red,));
      }
      else if(leftNubmer==3 && rightNubmer==1)
    {
      leftResult='winner';
      rightResult='loser';
      leftList.add(Icon(Icons.check , color: Colors.green));
      rightList.add(Icon(Icons.clear, color: Colors.red,));
    }
      else if(leftNubmer==2 && rightNubmer==3){
      leftResult='winner';
      rightResult='loser';
      leftList.add(Icon(Icons.check , color: Colors.green));
      rightList.add(Icon(Icons.clear, color: Colors.red,));
      }
      else if(leftNubmer==3 && rightNubmer==2)
      {
      leftResult='loser';
      rightResult='winner';
      rightList.add(Icon(Icons.check , color: Colors.green));
      leftList.add(Icon(Icons.clear, color: Colors.red,));
      }
      else if(leftNubmer == rightNubmer)
        leftResult=rightResult='draw';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                     children: [
                       Text((leftResult==null)?'':leftResult,
                         style: TextStyle(
                             fontSize: 30,color: Colors.pink
                         ),),
                       Container(
                         height: 200,
                         width: 200,
                       margin: EdgeInsets.all(15),
                       child: Image.asset('images/$leftNubmer.jpg'),
                       decoration:
                       BoxDecoration(border: Border.all(color: Colors.black),
                           color: Colors.white),
                     ),
                       Container(
                         child: Wrap(
                         children: leftList,
                     ),
                       )],
                  )),
              Expanded(
                  child: Column(
                    children: [
                      Text((rightResult==null)?'':rightResult,
                      style: TextStyle(
                        fontSize: 30,color: Colors.pink
                      ),),
                      Container(
                        height: 200,
                          width: 200,
                          margin: EdgeInsets.all(15),
                          child: Image.asset('images/$rightNubmer.jpg'),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white)),
                      Container(
                        child: Wrap(
                          children: rightList,
                        ),
                      )
                    ],
                  )),
            ],
          ),
          FlatButton(
              padding: EdgeInsets.all(15),
              color: Colors.green,
              onPressed: () {
              changeCard();
              },
              child: Text(
                'Play',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ))
        ],
      )),
    );
  }
}
