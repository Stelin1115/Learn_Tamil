// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/Widgets/TextWidget.dart';
import 'package:learn_tamil/Components/constrants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
              color: kPrimaryWhiteColor,
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
        leading: GestureDetector(
          onTap: () {},
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
        child: Stack(children: [
          Image(image: AssetImage('assets/images/intersection.png')),
          Image(image: AssetImage('assets/images/group-40.png')),
          
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                // SizedBox(height: 30,),
                // Text(
                //   'Settings',
                //   style: TextStyle(
                //       color: kPrimaryWhiteColor,
                //       fontFamily: 'Poppins',
                //       fontSize: 20,
                //       fontWeight: FontWeight.w400),
                // ),
                
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kPrimaryWhiteColor,
                      borderRadius: BorderRadius.circular(25)),
                  width: screenWidth,
                  height: screenHeight * 18 / 10,
                  child: Column(children: []),
                ),
                 SizedBox(
                  height: 15,)
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
