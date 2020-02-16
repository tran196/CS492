import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding(context)),
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[SizedBox(width:50, height:50, child: Placeholder()),]
            ),
            Padding(padding: EdgeInsets.all(padding(context))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Jane Smith"),]
            ),
            Padding(padding: EdgeInsets.all(padding(context))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("Developer Extrodinare"),]
            ),
            Padding(padding: EdgeInsets.all(padding(context))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("555-555-5555"),]
            ),
            Padding(padding: EdgeInsets.all(padding(context))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("github.com/jsmith"),
                Text("jsmith@email.com")
                ]
            )
          ],
        ),
      )
    );
  }

    double padding(BuildContext context) {
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        return MediaQuery.of(context).size.width * 0.02; 
      } else {
        return MediaQuery.of(context).size.width * 0.03;
      }
    }

    // Widget textBox(){
    //   return 
    // }
}