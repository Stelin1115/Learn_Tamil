// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Components/buttons/ModuleButton.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Vocabulary/Vocabulary.dart';

class ModulePage extends StatefulWidget {
  const ModulePage({Key? key}) : super(key: key);

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryWhiteColor,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/group-40.png'),
                // fit: BoxFit.fitWidth
              )),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: screenHeight * (1 / 20)),
                    Text(
                      "Modules",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 21,
                          color: primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: screenHeight * (1 / 40)),
                    Container(
                      width: screenWidth,
                      height: screenHeight * (1 / 4),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/module.png'),
                              fit: BoxFit.contain)),
                    ),
                    SizedBox(height: screenHeight * (1 / 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ModuleButtons(
                          text: 'Vocabulary',
                          textcolor: kPrimaryWhiteColor,
                          backcolor: kPrimaryRedColor,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VocabularyPage(),
                              ),
                            );
                          }, bordercolor: kPrimaryRedColor,
                        ),
                        ModuleButtons(
                          text: 'Grammer',
                          textcolor: kPrimaryWhiteColor,
                          backcolor: kPrimaryDarkColor,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VocabularyPage(),
                              ),
                            );
                          }, bordercolor: kPrimaryDarkColor,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ModuleButtons(
                          text: 'Spoken',
                          textcolor: kPrimaryWhiteColor,
                          backcolor: kPrimaryBlueColor,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VocabularyPage(),
                              ),
                            );
                          }, bordercolor: kPrimaryBlueColor,
                        ),
                        ModuleButtons(
                          text: 'Quiz',
                          textcolor: kPrimaryRedColor,
                          backcolor: kPrimaryWhiteColor,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VocabularyPage(),
                              ),
                            );
                          }, bordercolor: kPrimaryRedColor,
                        )
                      ],
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
