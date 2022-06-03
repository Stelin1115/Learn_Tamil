import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Auth/Signup/Signup.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/FadeRoutePage.dart';
import 'package:learn_tamil/Components/constrants.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
    () => Navigator.push(context, FadeRoute(page: SigninPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Learn",
                    style: TextStyle(
                        color: kPrimaryPurpleColor,
                        fontSize: 60,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Tamil",
                    style: TextStyle(
                        color: kPrimaryRedColor,
                        fontSize: 60,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            )),
          ),
           Positioned(
            
              top: -screenHeight * 0.72,
              right: -screenWidth * 0.20,
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/splash.png'),
                ),
                height: screenHeight * 1.45,
                width: screenWidth * 1.45,
              )),

          Positioned(
            
              bottom: -screenHeight * 0.72,
              left: -screenWidth * 0.20,
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/splash.png'),
                ),
                height: screenHeight * 1.45,
                width: screenWidth * 1.45,
              )),

        ],
      ),
    );
  }
}
