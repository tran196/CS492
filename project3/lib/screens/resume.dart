import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return SafeArea(
              child: Container(
          padding: EdgeInsets.all(padding(context)),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  resumeNameEmailGithub("Tuan Tran", "trant6@oregonstate.edu", "https://github.com/flutter"),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context, "Software Developer Intern", "E Corp", "2016 - Present", "Springfield, OR"),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context, "Software Developer Intern", "E Corp", "2016 - Present", "Springfield, OR"),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context, "Software Developer Intern", "E Corp", "2016 - Present", "Springfield, OR"),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context, "Software Developer Intern", "E Corp", "2016 - Present", "Springfield, OR"),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context, "Software Developer Intern", "E Corp", "2016 - Present", "Springfield, OR"),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context, "Software Developer Intern", "E Corp", "2016 - Present", "Springfield, OR"),
                ]
              )
            ),
          ),
        ),
      );
    }


    Widget resumeNameEmailGithub(String name, String email, String githubURL) {
      return Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                        Text("$name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, ) ),
                        Text("$email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)), 
                        Text("$githubURL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
                      ],
                    )
        ],
      );
    }


    Widget resumeFiller(BuildContext context, String title, String corp, String date, String location ){
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              resumeJobTitle(title),
              resumeDateLocation(corp, date, location), 
              Container(child: resumeJobDescription()),
              ],
            ),
          ),
        ]
      );
    }

    

    Widget resumeJobTitle(String title)
    {
      return Row(children: <Widget>[
        Text("$title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
      ],);
    }

    Widget resumeDateLocation(String corp, String dates, String location) {
      return Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Text("$corp", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14.0)),
        Text("$dates", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14.0)),
        Text("$location", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14.0)),
      ],);
    }

    Widget resumeJobDescription() {
      return Wrap( 
        children: <Widget>[ 
          Text("Lorem ipsum dolor sit amet, mea in putant conceptam moderatius. Meliore salutatus ut eam. Omnes graeci quo no, dicit molestiae necessitatibus cu quo. Abhorreant elaboraret id mea, no discere definiebas intellegam pro. Nonumes eligendi appareat nec ne. Eum postea ullamcorper ex.",
          softWrap: true,),],
      );
    }


    double padding(BuildContext context) {
      if (MediaQuery.of(context).orientation == Orientation.landscape) {
        return MediaQuery.of(context).size.width * 0.01; 
      } else {
        return MediaQuery.of(context).size.width * 0.02;
      }
    }
}