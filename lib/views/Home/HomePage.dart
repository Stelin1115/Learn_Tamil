// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/ScaleRoutePage.dart';
import 'package:learn_tamil/Components/buttons/ModuleButton.dart';
import 'package:learn_tamil/Components/buttons/ModuleButtonDesktop.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Module/ModulePage.dart';
import 'package:learn_tamil/views/Vocabulary/Vocabulary.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List unfinishedmodule = [
    {"unfinishedmodule": "Vocabulary - Beginner"},
  ];

  List unfinishedd = [
    {"module": "Vocabulary", "level": "Intermediate"},
    {"module": "Vocabulary", "level": "Intermediate"},
    {"module": "Vocabulary", "level": "Intermediate"},
    {"module": "Vocabulary", "level": "Intermediate"}
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Learn Tamil',
          style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: kPrimaryRedColor,
                size: 30,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return false;
          },
          child: SingleChildScrollView(
            child: Responsive(
                mobile: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/group-40.png'),
                      )),
                    ),
                    SingleChildScrollView(
                      child: Center(
                        child: SizedBox(
                            height: screenHeight * 1,
                            width: screenWidth,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: welcome(),
                                ),
                                SizedBox(height: 10),
                                _search(),
                                SizedBox(height: 20),
                                learning(screenWidth),
                                SizedBox(height: 20),
                                lastopened(screenWidth),
                                SizedBox(height: 20),
                                unfinished(screenWidth),
                                // SizedBox(height: 20,)
                              ],
                            )),
                      ),
                    )
                  ],
                ),
                tabletpotrait: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: welcome(),
                      ),
                      SizedBox(height: 10),
                      _search(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          learningtablet(screenWidth),
                          lastopenedtablet(screenWidth)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      unfinishedtablet(screenWidth),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: screenHeight * 4 / 9,
                          decoration: BoxDecoration(
                              color: kPrimaryWhiteColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: modulepagewidget(context),
                        ),
                      ),
                    ],
                  ),
                ),
                tabletlandscape: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: welcome(),
                      ),
                      SizedBox(height: 10),
                      _search(),
                      Row(
                        children: [
                          Container(
                            width: screenWidth * 1 / 3,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  learningtablet(screenWidth),
                                  SizedBox(height: 20),
                                  lastopenedtablet(screenWidth),
                                  SizedBox(height: 20),
                                  unfinishedtablet(screenWidth),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              width: screenWidth * 8 / 13,
                              height: screenHeight * 2 / 3,
                              decoration: BoxDecoration(
                                  color: kPrimaryWhiteColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: modulepagewidget(context),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                desktop: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      welcome(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Last open module',
                                style: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 30),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              modulewidget(
                                module: 'Vocabulary',
                                level: 'Intermediate',
                              ),
                            ],
                          ),
                          learningdesktop(screenWidth)
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Unfinished modules',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  height: 200,
                                  width: 1000,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: unfinishedd.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                            onTap: () {},
                                            child: modulewidget(
                                                module: unfinishedd[index]
                                                    ["module"],
                                                level: unfinishedd[index]
                                                    ["level"]));
                                      }),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Modules',
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 30),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  ModuleButtonDesktop(
                                      text: 'Vocabulary',
                                      textcolor: kPrimaryWhiteColor,
                                      backcolor: kPrimaryRedColor,
                                      press: () {
                                        Navigator.push(context,
                                            ScaleRoute(page: VocabularyPage()));
                                      },
                                      bordercolor: kPrimaryRedColor),
                                  ModuleButtonDesktop(
                                      text: 'Grammer',
                                      textcolor: kPrimaryWhiteColor,
                                      backcolor: kPrimaryDarkColor,
                                      press: () {
                                        Navigator.push(context,
                                            ScaleRoute(page: VocabularyPage()));
                                      },
                                      bordercolor: kPrimaryDarkColor),
                                  ModuleButtonDesktop(
                                      text: 'Spoken',
                                      textcolor: kPrimaryWhiteColor,
                                      backcolor: kPrimaryBlueColor,
                                      press: () {
                                        Navigator.push(context,
                                            ScaleRoute(page: VocabularyPage()));
                                      },
                                      bordercolor: kPrimaryBlueColor),
                                  ModuleButtonDesktop(
                                      text: 'Quiz',
                                      textcolor: kPrimaryRedColor,
                                      backcolor: kPrimaryWhiteColor,
                                      press: () {
                                        Navigator.push(context,
                                            ScaleRoute(page: VocabularyPage()));
                                      },
                                      bordercolor: kPrimaryRedColor)
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                              height: 300,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/module.png')))
                        ],
                      ),
                      SizedBox(height: 30,)
                    ],
                  ),
                )),
          )),
    );
  }

  Center modulepagewidget(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

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
                  children: <Widget>[vocabulary(context), grammer(context)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[spoken(context), quiz(context)],
                ),
              ],
            )
          ],
        )
      ]),
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

  Stack unfinished(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 129,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryWhiteColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Unfinished modules',
                          style: TextStyle(
                              fontSize: 17,
                              color: kPrimaryRedColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: SizedBox(
                        height: 70,
                        child: ListView.builder(
                            itemCount: unfinishedmodule.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        unfinishedmodule[index]
                                            ["unfinishedmodule"],
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: kPrimaryRedColor,
                                            fontWeight: FontWeight.w300,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 0)
                  ]),
            ),
          ),
        ),
        Positioned(
            left: 0,
            top: -20,
            child: Image(
              image: AssetImage('assets/images/unfinishedmodulecard.png'),
            ))
      ],
    );
  }

  Stack unfinishedtablet(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 129,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryWhiteColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Unfinished modules',
                          style: TextStyle(
                              fontSize: 17,
                              color: kPrimaryRedColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: SizedBox(
                        height: 70,
                        child: ListView.builder(
                            itemCount: unfinishedmodule.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        unfinishedmodule[index]
                                            ["unfinishedmodule"],
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: kPrimaryRedColor,
                                            fontWeight: FontWeight.w300,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 0)
                  ]),
            ),
          ),
        ),
        Positioned(
            left: 0,
            top: -20,
            child: Image(
              image: AssetImage('assets/images/unfinishedmodulecard.png'),
            ))
      ],
    );
  }

  Stack lastopened(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 150,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryWhiteColor),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Last open module',
                    style: TextStyle(
                        fontSize: 17,
                        color: kPrimaryRedColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                        height: 50,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Vocabulary',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'beginner level',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    height: 30,
                    width: 230,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.all(0),
                      color: kPrimaryRedColor,
                      textColor: kPrimaryWhiteColor,
                      child: Text('Continue',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                    ),
                  )
                ]),
          ),
        ),
        Positioned(
            right: 10,
            top: 25,
            child: Image(
              image: AssetImage('assets/images/lastopenmodulecard.png'),
            ))
      ],
    );
  }

  Stack lastopenedtablet(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryWhiteColor),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Last open module',
                    style: TextStyle(
                        fontSize: 17,
                        color: kPrimaryRedColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                        height: 50,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Vocabulary',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'beginner level',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    height: 30,
                    width: 230,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.all(0),
                      color: kPrimaryRedColor,
                      textColor: kPrimaryWhiteColor,
                      child: Text('Continue',
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                    ),
                  )
                ]),
          ),
        ),
        Positioned(
            right: 10,
            top: 25,
            child: Image(
              image: AssetImage('assets/images/lastopenmodulecard.png'),
            ))
      ],
    );
  }

  Stack learning(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            // height: 160,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Learning Progress',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: kPrimaryRedColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: SizedBox(
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vocabulary:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '60%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Grammer:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '50%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Quiz:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '40%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 5.0,
                          animation: true,
                          percent: 80 / 100,
                          center: Text(
                            80.toString() + "%",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800,
                                color: kPrimaryRedColor),
                          ),
                          backgroundColor: kPrimaryWhiteColor,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: kPrimaryRedColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            left: 0,
            top: -10,
            child: Image(
              image: AssetImage('assets/images/learningprogresscard.png'),
            ))
      ],
    );
  }

  Stack learningtablet(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            // height: 160,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Learning Progress',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: kPrimaryRedColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: SizedBox(
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vocabulary:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '60%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Grammer:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '50%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Quiz:',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '40%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 5.0,
                          animation: true,
                          percent: 80 / 100,
                          center: Text(
                            80.toString() + "%",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800,
                                color: kPrimaryRedColor),
                          ),
                          backgroundColor: kPrimaryWhiteColor,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: kPrimaryRedColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            left: 0,
            top: -10,
            child: Image(
              image: AssetImage('assets/images/learningprogresscard.png'),
            ))
      ],
    );
  }

  Stack learningdesktop(double screenWidth) {
    return Stack(
      clipBehavior: Clip.none, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 60,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Learning Progress',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: kPrimaryRedColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: SizedBox(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vocabulary:',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '60%',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Grammer:',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '50%',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 250,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Quiz:',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '40%',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(width: 40),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 80 / 100,
                          center: Text(
                            80.toString() + "%",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w800,
                                color: kPrimaryRedColor),
                          ),
                          backgroundColor: kPrimaryWhiteColor,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: kPrimaryRedColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            left: 0,
            top: -10,
            child: Image(
              image: AssetImage('assets/images/learningprogresscard.png'),
            ))
      ],
    );
  }

  Align welcome() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Welcome! John Doe',
        style: TextStyle(
            fontSize: 19, fontFamily: 'Poppins', fontWeight: FontWeight.normal),
      ),
    );
  }

  _search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 40,
        child: TextFormField(
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 16, color: primaryColor),
          cursorColor: primaryColor,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            hintText: "Search a word",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              color: kPrimaryGreyColor,
              fontWeight: FontWeight.w300,
            ),
            fillColor: kPrimaryWhiteColor,
            filled: true,
            prefixIcon: Icon(Icons.search, size: 30, color: kPrimaryGreyColor),
            prefixIconConstraints: BoxConstraints(
              minWidth: 50,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: kPrimaryWhiteColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: kPrimaryWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}

class modulewidget extends StatelessWidget {
  final String module;
  final String level;
  const modulewidget({
    Key? key,
    required this.module,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: SizedBox(
        height: 200,
        width: 200,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(kPrimaryWhiteColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                module,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: kPrimaryRedColor),
              ),
              Text(
                level,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: kPrimaryGreyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
