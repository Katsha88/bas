import 'package:flutter/material.dart';
import 'package:streaming/subject.dart';

class LessonPlan extends StatelessWidget {
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
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Subject()),
                  );
                },
                title: Text('Grade 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 2'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 3'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 4'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 5'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 6'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 7'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 8'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 9'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Grade 10'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
