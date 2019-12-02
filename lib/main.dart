
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'template.dart';

import 'loading.dart';

void main() {

  return runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/template': (context) => Template(),
    }
));}