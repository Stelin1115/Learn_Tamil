// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Vocabulary/Vocabulary.dart';

class WorkersPage extends StatefulWidget {
  const WorkersPage({ Key? key }) : super(key: key);

  @override
  State<WorkersPage> createState() => _WorkersPageState();
}

class _WorkersPageState extends State<WorkersPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          'Workers',
          style: TextStyle(
            color: kPrimaryWhiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            fontFamily: 'Poppins'
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: kPrimaryWhiteColor,
          ),
        ),
        backgroundColor: kPrimaryRedColor,
        elevation: 0,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: Stack(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage(
                  'assets/images/intersection.png'
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage(
                  'assets/images/group-40.png'
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Workers name - level 01',
                        style: TextStyle(
                          color: kPrimaryWhiteColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}