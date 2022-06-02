// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Account',
          style: TextStyle(
              color: kPrimaryWhiteColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
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
          children: [
            Image(image: AssetImage('assets/images/intersection.png')),
            Image(image: AssetImage('assets/images/group-40.png')),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 1/35),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryWhiteColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: screenHeight * 8.5/10,
                      width: screenWidth,
                      child: Column(children: [
                        Image(image: AssetImage('assets/images/accountintersection.png'))
                        
                      ]),
                      
                    ),
                    SizedBox(height: 20,)
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
