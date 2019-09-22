import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'globals.dart' as globals;

class TeacherAfterLogin extends StatefulWidget {
  @override
  _TeacherAfterLogin createState() => new _TeacherAfterLogin();
}

class _TeacherAfterLogin extends State<TeacherAfterLogin> with TickerProviderStateMixin {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Teacher's account"),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      color: Colors.teal[100],
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/student.png",
                            )),
                        Container(
                          color: Colors.white70,
                          child: const Text(
                            "My Classes",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]))),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      color: Colors.teal[100],
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/schedule.png",
                            )),
                        Container(
                          color: Colors.white70,
                          child: const Text(
                            "Calender",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]))),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      color: Colors.teal[100],
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/question.png",
                            )),
                        Container(
                          color: Colors.white70,
                          child: const Text(
                            "Messages",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]))),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      color: Colors.teal[100],
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/professor.png",
                            )),
                        Container(
                          color: Colors.white70,
                          child: const Text(
                            "Teachers",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]))),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      color: Colors.teal[100],
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/headache.png",
                            )),
                        Container(
                          color: Colors.white70,
                          child: const Text(
                            "Attendence",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]))),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Container(
                      color: Colors.teal[100],
                      padding: const EdgeInsets.all(20),
                      child: Column(children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              "assets/images/presentation.png",
                            )),

                        Container(
                          color: Colors.white70,
                          child: const Text(
                            "Library",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]))),

            ],
          )),
    );
  }
}
