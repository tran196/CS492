import 'package:flutter/material.dart';
import 'dart:math';

import '../models/magic.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key key}) : super (key:key);
  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Call Me Maybe?", style: TextStyle(fontSize: 25),), 
                  Magic(),
                ],
              ),
            )
        
      ),
    );
  }

  
}