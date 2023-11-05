import 'package:all_ui/homeinst.dart';
import 'package:all_ui/login.dart';
import 'package:all_ui/searchspot.dart';
import 'package:all_ui/songs.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All UIs',
    debugShowCheckedModeBanner: false,
      //home: login(),
      //home: search(),
       home: const login()
    );
  }
}


