import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.all(padding(context)),
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[SizedBox(width:70, height:70, child: Image.asset("assets/images/tuan_tran_picture.jpeg")),]
              ),
              businessCardText("Tuan Tran"),
              businessCardText("Flutter Developer"),
              businessCardPhoneNumber("555-555-5555"),
              businessCardGithubEmail('https://github.com/flutter', 'trant6@oregonstate.edu'),
              
            ],
          ),
        )
      ),
    );
  }

    double padding(BuildContext context) {
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        return MediaQuery.of(context).size.width * 0.02; 
      } else {
        return MediaQuery.of(context).size.width * 0.03;
      }
    }

  Widget businessCardText(String name) {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$name", 
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,),)
      ],);
  }

  Widget businessCardPhoneNumber(String phoneNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(onPressed:() {launch('sms:$phoneNumber');},
          child: Text("$phoneNumber", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,))),]
    );
  }

  Widget businessCardGithubEmail(String githubURL, String email) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(onPressed: () {
          launch('$githubURL');
          // _launchURL();
        },
          child: Text("$githubURL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0,))),
        Text("$email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0,))
        ]
    );
  }

  Future _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}