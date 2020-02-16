
import 'package:flutter/material.dart';

import 'screens/business_card.dart';
import 'screens/resume.dart';
import 'screens/predictor.dart';


class MainTabController extends StatelessWidget {

  static const tabs = [
    Tab(icon: Icon(Icons.people)),  // Business Card
    Tab(icon: Icon(Icons.pageview)),  // Resume
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
          appBar: AppBar(
            bottom: TabBar( tabs: tabs,),
            title: Text('Project 3'), 
          ),
          body: TabBarView( children: screens,),
        ),
      ),
    );
  }


}
