import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Lesson Plan 2019-2020";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            Card(
                child: ListTile(
              title: Text('Math'),
            )),
            Card(
                child: ListTile(
              title: Text('Arabic'),
            )),
            Card(
                child: ListTile(
              title: Text('English'),
            )),
            Card(
                child: ListTile(
              title: Text('Science'),
            )),
            Card(
                child: ListTile(
              title: Text('Malay'),
            )),
            Card(
                child: ListTile(
              title: Text('PE'),
            )),
            Card(
                child: ListTile(
              title: Text('Art'),
            )),
            Card(
                child: ListTile(
              title: Text('Quran'),
            )),
            Card(
                child: ListTile(
              title: Text('Islamic Studies'),
            )),
          ],
        ),
      ),
    );
  }
}
