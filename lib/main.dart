import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  randomImages(){
    var listDice = [
    'assets/images/dice1.png',
    'assets/images/dice2.png',
    'assets/images/dice3.png',
    'assets/images/dice4.png',
    'assets/images/dice5.png',
    'assets/images/dice6.png',];
    var randomimage = "";
    var image = Random();
    for(int i = 1; i < 3; i++)
    {
      randomimage =  listDice[image.nextInt(listDice.length)];
    }
    return randomimage;
  }
    var randomDice = "";
  randomGetImage(){
    setState(() {
      randomDice = randomImages().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green[800],
            toolbarHeight: 100,
            title: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/diceeLogo.png', width: 100, height: 100,)
                ],
              ),
            ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Image.asset(randomDice, width: 100, height: 100,),
              Container(
                width: 100,
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: randomGetImage, 
                  child: Text('Roll', style: TextStyle(color: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}