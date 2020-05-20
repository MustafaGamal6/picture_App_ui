import 'package:flutter/material.dart';
import 'package:pictureapp/screen_1.dart';
import 'package:pictureapp/profile.dart';

void main() => runApp(MaterialApp(
      title: 'picture App',
      debugShowCheckedModeBanner: false,
      home: First(),
     // initialRoute: 'firstscreen',
      routes: {
        'firstscreen':(context) => First(),
        'profile'    :(context) => Profile()
      },
    )
  );




