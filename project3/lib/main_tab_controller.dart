
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/business_card.dart';
import 'screens/resume.dart';
import 'screens/predictor.dart';


class MainTabController extends StatelessWidget {

  static const tabs = [
    Tab(icon: Icon(Icons.people)),  // Business Card
    Tab(icon: Icon(Icons.palette)),  // Resume
    Tab(icon: Icon(Icons.query_builder)), // Eight Ball
  ];

  final screens = [
    BusinessCard(),
    Resume(),
    Predictor()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.purpleAccent,
            bottom: TabBar( tabs: tabs,),
            title: Text('Project 3', style: GoogleFonts.lato(),), 
          ),
          body: TabBarView( children: screens,),
        ),
      ),
    );
  }


}
