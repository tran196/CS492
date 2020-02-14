import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center( child: 
            // [Picture]
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 50.0, 
                height: 50.0, 
                child: Placeholder()
              ),
            ),
          ),

          // [Name]
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 100.0, 
              height: 20.0, 
              child: Text("Jane Smith", textAlign: TextAlign.center,)
            ),
          ),

          // [Title]
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 120.0, 
              height: 30.0, 
              child: Text("Developer Extraordinaire", textAlign: TextAlign.center,)
            )
          ),

        // [Phone Number]
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 100.0, 
              height: 50.0, 
              child: Text("555 555 5555", textAlign: TextAlign.center,)
            ),
          ),

          // [Github and Email]
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 150.0, 
                  height: 50.0, 
                  child: Text("github.com/jsmith", textAlign: TextAlign.center,)
                ),
                SizedBox(
                  width: 150.0, 
                  height: 50.0, 
                  child: Text("jsmith@oregonstate.edu", textAlign: TextAlign.center,)
                ),
              ],
            ),
          ),

        ],
      )
      
    );
  }
}