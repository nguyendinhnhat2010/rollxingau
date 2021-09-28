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
    var randomimage1 = "";
    var image1 = Random();
    randomimage1 = listDice[image1.nextInt(listDice.length)];
    return randomimage1;
    var randomimage2 = "";
    var image2 = Random();
    randomimage2 = listDice[image2.nextInt(listDice.length)];
    return randomimage2;

  }
    var randomDice1 = "assets/images/dice1.png";
    var randomDice2 = "assets/images/dice1.png";
  randomGetImage(){
    setState(() {
      randomDice1 = randomImages().toString();
      randomDice2 = randomImages().toString();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(randomDice1, width: 100, height: 100,),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(randomDice2, width: 100, height: 100,),
                  ),
                ],
              ),
              Container(
                width: 100,
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: randomGetImage, 
                  child: const Text('Roll', style: TextStyle(color: Colors.white),),
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