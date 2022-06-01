// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List unfinishedmodule = [
    {"unfinishedmodule": "Vocabulary - Beginner"},
    {"unfinishedmodule": "Vocabulary - Beginner"},
    {"unfinishedmodule": "Vocabulary - Beginner"},
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
              fontSize: 21,
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
        child: Stack(
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
                          padding: const EdgeInsets.only(left: 36),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Welcome! John Doe',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * (1 / 60)),
                        _search(),
                        SizedBox(height: 30),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 36),
                              child: Container(
                                // height: 160,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 40,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Learning Progress',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: kPrimaryRedColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth,
                                      child: Row(
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: SizedBox(
                                              height: 110,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    width: 170,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Vocabulary:',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Text(
                                                          '60%',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 170,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Grammer:',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Text(
                                                          '50%',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 170,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Quiz:',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Text(
                                                          '40%',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 40),
                                          CircularPercentIndicator(
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
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor: kPrimaryRedColor,
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
                                  image: AssetImage(
                                      'assets/images/learningprogresscard.png'),
                                ))
                          ],
                        ),
                        SizedBox(height: 30),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 36),
                              child: Container(
                                height: 150,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kPrimaryWhiteColor),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: SizedBox(
                                          height: 50,
                                          child: Column(
                                                  children: [
                                                    Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Text(
                                                        'Vocabulary',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Text(
                                                        'beginner level',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Poppins',
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        height: 30,
                                        width: 230,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(35.0),
                                          ),
                                          onPressed: () {},
                                          padding: EdgeInsets.all(0),
                                          color: kPrimaryRedColor,
                                          textColor: kPrimaryWhiteColor,
                                          child: Text('Continue',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14)),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            Positioned(
                                right: 10,
                                top: 25,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/lastopenmodulecard.png'),
                                ))
                          ],
                        ),
                        SizedBox(height: 30),
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 36),
                              child: Container(
                                // height: 170,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kPrimaryWhiteColor),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 40,
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
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: SizedBox(
                                            height: 100,
                                            child: ListView.builder(
                                                itemCount:
                                                    unfinishedmodule.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return GestureDetector(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          unfinishedmodule[
                                                                  index][
                                                              "unfinishedmodule"],
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 14),
                                                        ),
                                                        GestureDetector(
                                                          child: Text(
                                                            'View',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Poppins',
                                                                color:
                                                                    kPrimaryRedColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline),
                                                          ),
                                                          onTap: () {},
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ),
                                        SizedBox(height: 10)
                                      ]),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 0,
                                top: -20,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/unfinishedmodulecard.png'),
                                ))
                          ],
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  _search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
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
