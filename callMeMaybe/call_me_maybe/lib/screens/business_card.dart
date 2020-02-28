import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.8,
          child: Padding(
            padding: EdgeInsets.all(padding(context)),
            child: Placeholder()
            )
          
        ),
    );
      
  }

    double padding(BuildContext context) {
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        return MediaQuery.of(context).size.width * 0.1; 
      } else {
        return MediaQuery.of(context).size.width * 0.3;
      }
    }


}

