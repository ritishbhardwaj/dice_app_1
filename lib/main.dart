import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(Dice());
}

class Dice extends StatefulWidget {
  Dice({super.key});


  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  
  int num1 = 1;
  int num2 = 5;

  void calculate() async{
      Random random =Random();

    for (int i=0;i<15; i++){

      await Future.delayed(const Duration(milliseconds: 100),(){

        num1= random.nextInt(6)+1;
        num2= random.nextInt(6)+1;

        setState(() {});

      });
    }   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: calculate,

        child: Scaffold(
        
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
                  Image.asset("images/dice$num1.png", fit: BoxFit.cover, width: 150,height: 150,),
                  Image.asset("images/dice$num2.png", fit: BoxFit.cover, width: 150,height: 150,),
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
      ),
    );
  }
}