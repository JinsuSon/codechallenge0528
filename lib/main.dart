import 'package:flutter/material.dart';
import 'package:whattodo/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatToDo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff1f1f1f),
        ),
        home: const Screen());
  }
}
