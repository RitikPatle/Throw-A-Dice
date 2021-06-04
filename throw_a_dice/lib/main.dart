import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Throw the Dice',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DiceThrowApp(),
    );
  }
}

class DiceThrowApp extends StatefulWidget {
  const DiceThrowApp({Key key}) : super(key: key);

  @override
  _DiceThrowAppState createState() => _DiceThrowAppState();
}

class _DiceThrowAppState extends State<DiceThrowApp> {
  int leftDiceNo = 0;
  int rightDiceNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: Text('THROW THE DICE'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Dice A : $leftDiceNo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 2.5,
                            ),
                          ),
                          Text(
                            'Dice B : $rightDiceNo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 2.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Total Score : ${leftDiceNo + rightDiceNo}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            leftDiceNo = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset(
                          'assets/dice$leftDiceNo.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            rightDiceNo = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset(
                          'assets/dice$rightDiceNo.png',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.white,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNo = Random().nextInt(6) + 1;
                        rightDiceNo = Random().nextInt(6) + 1;
                      });
                    },
                    child: Text(
                      'Throw the Dice',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
