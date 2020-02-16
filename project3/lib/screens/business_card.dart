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
                children: <Widget>[SizedBox(width:50, height:50, child: Placeholder()),]
              ),
              businessCardText("Tuan Tran"),
              businessCardText("Flutter Developer"),
              businessCardPhoneNumber("555-555-5555"),
              businessCardGithubEmail('https://github.com/flutter', 'jsmith@example.com'),
              
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
      children: <Widget>[Text("$name")],);
  }

  Widget businessCardPhoneNumber(String phoneNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(onPressed:() {launch('sms:$phoneNumber');},
          child: Text("$phoneNumber")),]
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
          child: Text("$githubURL")),
        Text("$email")
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