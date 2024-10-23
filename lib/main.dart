import 'package:demo/pages/Get_Api.dart';
import 'package:demo/pages/Get_Api1.dart';
import 'package:demo/pages/Get_Api2.dart';
import 'package:demo/pages/Radio_Button.dart';
import 'package:demo/pages/pop_screen.dart';
import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:RadioButtonExample(),
    );
  }
}