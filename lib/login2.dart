import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'sign_in.dart';
import 'FirstScreen.dart';
import 'home.dart';
import 'gridview_demo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage2 extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(
                image: new AssetImage("assets/images/logo.png"),
                height: 300,
                width: 300,
              ),
              SizedBox(height: 1),
              _signInButton(),
              SizedBox(height: 1),
              _signOutButton(),

              Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: new Text(
                      "Trusted By: \nBaseerah Intenational School",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _signOutButton(){
    return MaterialButton(
      onPressed: () => signOutGoogle(),
      color: Colors.white,
      textColor: Colors.black,
      child: Text('Logout with Google'),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((FirebaseUser user) { print(user);
        if (user!= null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GridViewDemo()),
          );
        }
        }
        )
            .catchError((e) => print(e));


      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/images/google_logo.png"),
                height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
