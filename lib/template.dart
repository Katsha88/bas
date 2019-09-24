import 'package:flutter/material.dart';

import 'lesson_plan.dart';
import 'note_detail.dart';
import 'dart:async';
import 'login.dart';
import 'customicon.dart';
import 'home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login2.dart';
import 'developer.dart';
class Template extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TemplateState();
  }
}
class TemplateState extends State<Template> {
  int _selectedTab = 0;
  final _pageOptions = [
    Home(),
    LessonPlan(),
    LoginPage2(),
    Developer()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.indigo,
          type: BottomNavigationBarType.fixed,



          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Lesson Plan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Login'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              title: Text('Contact us'),
            ),
          ],
        ),
      ),
    );
  }}