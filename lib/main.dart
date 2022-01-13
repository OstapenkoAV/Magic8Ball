import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: const Text('Magic 8 Ball'),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
        ),
        body: const MagicBallPage(),
      ),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {

  int iAnswerNumber = 1;

  void changeAnswer() {
    setState(() {
      iAnswerNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed:(){
          changeAnswer();
        } ,
        child: Image.asset('images/ball$iAnswerNumber.png'),
      ),    
    );
  } 
}
