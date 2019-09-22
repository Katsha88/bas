import 'package:flutter/material.dart';
import 'package:streaming/subject.dart';

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Lesson Plan 2019-2020";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text("Developed by:\nMHD ZAHER AL KATSHA\n\n\nEmail:\nzaherkatsha17@gmail.com\n\n\nPhone:\n+601139000023",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.indigoAccent

              ),
            ),
          ),

        )
      ),
    );
  }
}

