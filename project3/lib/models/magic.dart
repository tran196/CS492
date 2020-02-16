
import 'dart:math';

import 'package:flutter/material.dart';

// class Magic {
//   var _randomString; 
//   var possible_outcomes = [
//     "Unlikely but possible", 
//     "Maybe Indeed",
//     "Definitely",
//     "The Future is uncertain", 
//     "Try again later", 
//     "You do not want to know the answer",
//     "Ask your mom",
//     "Shake Again"
//   ];

//   var random = Random().nextInt(9);
//   // const String outcome;


//   void generateOutcome() {

//   }
// }

class Magic extends StatefulWidget {


  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  var _randomString = "...."; 
  var possible_outcomes = [
    "Unlikely but possible", 
    "Maybe Indeed",
    "Definitely",
    "The Future is uncertain", 
    "Try again later", 
    "You do not want to know the answer",
    "Ask your mom",
    "Shake Again"
  ];

  bool _tapInProgress = false;

  void _tapDown(TapDownDetails details) {
    setState(() {
      _tapInProgress = true;
    });
  }
 
  void _tapUp(TapUpDetails details) {
    setState(() {
      _tapInProgress = false;
    });
  }
 
  void _tapCancel() {
    setState(() {
      _tapInProgress = false;
    });
  }

  void _onTap() {
    var random = Random().nextInt(8);
    _randomString = possible_outcomes[random];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTapDown: _tapDown,
            onTapUp: _tapUp,
            onTap: _onTap,
            onTapCancel: _tapCancel,
            child: new Container(
              color: _tapInProgress? Colors.blueAccent:Colors.red,
              child: new Column(
                children: <Widget>[
                  InkWell(
                    child: 
                      new Text("Ask a question... tap for the answer", 
                      style: TextStyle(fontSize: 25),),
                    onTap: _onTap,
                    ),
                    new Text("$_randomString", 
                    style: TextStyle(fontSize: 25),),
                ],)
            )
          ),
        ),
      ],
    );
  }
}
