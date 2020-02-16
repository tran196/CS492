import 'package:flutter/material.dart';
import 'dart:math';

class Predictor extends StatefulWidget {
  const Predictor({Key key}) : super (key:key);
  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  var _randomString = "";

  var _possibleOutcomes = [
    "Unlikely but possible", 
    "Maybe Indeed",
    "Definitely",
    "The Future is uncertain", 
    "Try again later", 
    "You do not want to know the answer",
    "Ask your mom",
    "Shake Again"
    ];

  var _randomNumber = Random().nextInt(4);

  void _handleTap(BuildContext context) {
    setState(() {
      _randomString = _possibleOutcomes[_randomNumber];
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Call Me Maybe?"), 
                  Container(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        _handleTap(context);
                        
                        // setState(() {
                        //   _randomString = _possibleOutcomes[_randomNumber];
                        // });
                      },
                      child: Text('Ask a question... tap for the answer')
                    ),
                  ),
                  Text('$_randomString',),
                  // Text("Ask a question... Tap for Answer"),
                  // Text(_randomString),

                ],
              ),
            )
        
      ),
    );
  }

  
}