// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/ScaleRoutePage.dart';
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
          child: Responsive(
              mobile: Stack(
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
                          modules(),
                          SizedBox(height: screenHeight * (1 / 40)),
                          image(screenWidth, screenHeight),
                          SizedBox(height: screenHeight * (1 / 15)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              vocabulary(context),
                              grammer(context)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[spoken(context), quiz(context)],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              tabletpotrait: Container(
                decoration: BoxDecoration(
                    color: kPrimaryDarkColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        modulesdesktop(),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            imagesesktop(),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    vocabulary(context),
                                    grammer(context)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    spoken(context),
                                    quiz(context)
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              ),
              tabletlandscape: Container(),
              desktop: Container())),
    );
  }

  ModuleButtons quiz(BuildContext context) {
    return ModuleButtons(
      text: 'Quiz',
      textcolor: kPrimaryRedColor,
      backcolor: kPrimaryWhiteColor,
      press: () {
        Navigator.push(context, ScaleRoute(page: VocabularyPage()));
      },
      bordercolor: kPrimaryRedColor,
    );
  }

  ModuleButtons spoken(BuildContext context) {
    return ModuleButtons(
      text: 'Spoken',
      textcolor: kPrimaryWhiteColor,
      backcolor: kPrimaryBlueColor,
      press: () {
        Navigator.push(context, ScaleRoute(page: VocabularyPage()));
      },
      bordercolor: kPrimaryBlueColor,
    );
  }

  ModuleButtons grammer(BuildContext context) {
    return ModuleButtons(
      text: 'Grammer',
      textcolor: kPrimaryWhiteColor,
      backcolor: kPrimaryDarkColor,
      press: () {
        Navigator.push(context, ScaleRoute(page: VocabularyPage()));
      },
      bordercolor: kPrimaryDarkColor,
    );
  }

  ModuleButtons vocabulary(BuildContext context) {
    return ModuleButtons(
      text: 'Vocabulary',
      textcolor: kPrimaryWhiteColor,
      backcolor: kPrimaryRedColor,
      press: () {
        Navigator.push(context, ScaleRoute(page: VocabularyPage()));
      },
      bordercolor: kPrimaryRedColor,
    );
  }

  Container imagesesktop() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/module.png'),
              fit: BoxFit.contain)),
    );
  }

  Container image(double screenWidth, double screenHeight) {
    return Container(
      width: screenWidth,
      height: screenHeight * (1 / 4),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/module.png'),
              fit: BoxFit.contain)),
    );
  }

  Text modules() {
    return Text(
      "Modules",
      style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          color: primaryColor,
          fontWeight: FontWeight.w300),
    );
  }

  Text modulesdesktop() {
    return Text(
      "Modules",
      style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 40,
          color: primaryColor,
          fontWeight: FontWeight.w300),
    );
  }
}
