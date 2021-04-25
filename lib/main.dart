import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
