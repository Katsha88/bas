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
        body:  GridView.builder(
            itemCount: 20,
            gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return new GestureDetector(
                child: new Card(
                  elevation: 5.0,
                  child: new Container(
                    alignment: Alignment.center,
                    child: new Text('Item $index'),
                  ),
                ),
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    child: new CupertinoAlertDialog(
                      title: new Column(
                        children: <Widget>[
                          new Text("GridView"),
                          new Icon(
                            Icons.favorite,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      content: new Text("Selected Item $index"),
                      actions: <Widget>[
                        new FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: new Text("OK"))
                      ],
                    ),
                  );
                },
              );
            })

      ),
    );
  }
}