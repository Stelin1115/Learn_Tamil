import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Auth/Signup/Signup.dart';
import 'package:learn_tamil/views/Home/HomePage.dart';
import 'package:learn_tamil/views/Home/HomeScreen.dart';
import 'package:learn_tamil/views/Module/Module.dart';
import 'package:learn_tamil/views/SplashPage/SplashPage.dart';
import 'package:learn_tamil/views/Vocabulary/Animals/Animals.dart';
import 'package:learn_tamil/views/Vocabulary/Food/Food.dart';
import 'package:learn_tamil/views/Vocabulary/Vocabulary.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tamil_Learn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tamil_Learn'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VocabularyPage(),
    );
  }
}