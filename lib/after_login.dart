import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'globals.dart' as globals;

class LoginAfter extends StatefulWidget {
  @override
  _LoginAfterState createState() => new _LoginAfterState();
}

class _LoginAfterState extends State<LoginAfter> with TickerProviderStateMixin {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
          appBar: new AppBar(
            title: new Text(globals.user1),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'My Profile',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'My Calender',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'My Inbox',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Complain',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Googl Class',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Student Behaviour ',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      "Student's Leave",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Outstanding',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Activites',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Competition',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.teal[100],
                    alignment: Alignment(0, 0),
                  )),

            ],
          )),
    );
  }
}
