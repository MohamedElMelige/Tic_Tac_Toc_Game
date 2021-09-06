import 'package:diece/game.dart';
import'package:flutter/material.dart';
import 'game.dart';
import 'first_page.dart';

void main(){
  runApp(Home());
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Game(),
    );
  }
}
