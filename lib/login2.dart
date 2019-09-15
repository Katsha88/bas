import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'sign_in.dart';
import 'FirstScreen.dart';
import 'home.dart';
import 'gridview_demo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'after_login.dart';
import 'after_login.dart';
import 'globals.dart' as globals;

class LoginPage2 extends StatefulWidget {
  final String value;

  const LoginPage2({Key key, this.value}) : super(key: key);

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
              signInButton(),
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

  Widget signInButton() {


    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((FirebaseUser user) { print(user);
        globals.user1=user.toString();
        if (user!= null) {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) =>
            new LoginAfter(),
          );
          Navigator.of(context).push(route);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => new LoginAfter()),
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
