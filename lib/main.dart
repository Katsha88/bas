
import 'package:flutter/material.dart';
import 'template.dart';

import 'loading.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/template': (context) => Template(),
    }
));