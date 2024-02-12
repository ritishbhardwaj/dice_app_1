

import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(Dice());
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  var list_images= {
    1   :  "dice1.png",
    2   :  "dice2.png",
    3   :  "dice3.png",
    4   :  "dice4.png",
    5   :  "dice5.png",
    6   :  "dice6.png",
  };

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  void giveMeDice(Event){

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dice App"),
          ),
        body: 
        Column(
      

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(" Roll The Dices",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/dice1.png", fit: BoxFit.cover, width: 150,height: 150,),
                Image.asset("images/dice2.png", fit: BoxFit.cover, width: 150,height: 150,),
                // Image.asset()
              ],
            ),

            Text("Lets Roll",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontStyle: FontStyle.italic
            ),),
            
          ],
        ),

      ),
    );
  }
}