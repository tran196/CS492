import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                  resumeNameEmailGithub(),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context),
                  Padding(padding: EdgeInsets.all(padding(context))),
                  resumeFiller(context),
                ]
              )
            ),
          ),
        ),
      );
    }


    Widget resumeNameEmailGithub() {
      return Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                        Text("Jane Smith", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        Text("jsmith@example.com",), 
                        Text("https://github.com/jsmith")
                      ],
                    )
        ],
      );
    }


    Widget resumeFiller(BuildContext context){
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              resumeJobTitle(),
              resumeDateLocation(context), 
              Container(child: resumeJobDescription()),
              ],
            ),
          ),
        ]
      );
    }

    

    Widget resumeJobTitle()
    {
      return Row(children: <Widget>[
        Text("Software Developer Intern", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
      ],);
    }

    Widget resumeDateLocation(BuildContext context) {
      return Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Text("E Corp!!!"),
        Text("2016 - Present"),
        Text("Springfield, OR"),
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