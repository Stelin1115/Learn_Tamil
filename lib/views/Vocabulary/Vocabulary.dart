// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/EnterExitRoutePage.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/FadeRoutePage.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/RotationRoutePage.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/ScaleRotateRoutePage.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/SizeRoutePage.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/SlideRightRoutePage.dart';
import 'package:learn_tamil/Components/buttons/VocabularyButton.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Module/ModulePage.dart';
import 'package:learn_tamil/views/Vocabulary/Animals/Animals.dart';
import 'package:learn_tamil/views/Vocabulary/Bodyparts/Bodyparts.dart';
import 'package:learn_tamil/views/Vocabulary/Food/Food.dart';
import 'package:learn_tamil/views/Vocabulary/Numbers/Numbers.dart';
import 'package:learn_tamil/views/Vocabulary/Shapes/Shapes.dart';
import 'package:learn_tamil/views/Vocabulary/Workers/Workers.dart';

class VocabularyPage extends StatefulWidget {
  const VocabularyPage({Key? key}) : super(key: key);

  @override
  State<VocabularyPage> createState() => _VocabularyPageState();
}

class _VocabularyPageState extends State<VocabularyPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Vocabulary',
          style: TextStyle(
              color: kPrimaryWhiteColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: kPrimaryWhiteColor,
                size: 30,
              )),
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
                child:
                    Image(image: AssetImage("assets/images/intersection.png"))),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/group-40.png'))),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth,
                      height: screenHeight,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: screenHeight * (1 / 30)),
                          Row(
                            children: [
                              Text(
                                "level 01",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    color: kPrimaryWhiteColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(' - ',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: kPrimaryWhiteColor,
                                      fontWeight: FontWeight.w500)),
                              Text("40% complete",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      color: kPrimaryWhiteColor,
                                      fontWeight: FontWeight.w500))
                            ],
                          ),
                          SizedBox(height: screenHeight * (1 / 80)),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'View all levels',
                                style: TextStyle(
                                  color: kPrimaryWhiteColor,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * (1 / 20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              VocabularyButton(
                                  text: 'Food',
                                  press: () {
                                    Navigator.push(
                                      context,
                                      FadeRoute(
                                        page: FoodPage(),
                                      ),
                                    );
                                  },
                                  image: 'assets/images/food.png'),
                              VocabularyButton(
                                  text: 'Animals',
                                  press: () {
                                    Navigator.push(
                                        context,
                                        EnterExitRoute(
                                            exitPage: VocabularyPage(),
                                            enterPage: AnimalsPage()));
                                  },
                                  image: 'assets/images/animals.png')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              VocabularyButton(
                                  text: 'Shapes',
                                  press: () {
                                    Navigator.push(
                                      context,
                                      RotationRoute(
                                        page: ShapesPage(),
                                      ),
                                    );
                                  },
                                  image: 'assets/images/shapes.png'),
                              VocabularyButton(
                                  text: 'Numbers',
                                  press: () {
                                    Navigator.push(
                                      context,
                                      ScaleRotateRoute(
                                        page: NumbersPage(),
                                      ),
                                    );
                                  },
                                  image: 'assets/images/numbers.png')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              VocabularyButton(
                                  text: 'Workers',
                                  press: () {
                                    Navigator.push(
                                      context,
                                      SizeRoute(
                                        page: WorkersPage(),
                                      ),
                                    );
                                  },
                                  image: 'assets/images/workers.png'),
                              VocabularyButton(
                                  text: 'Bodyparts',
                                  press: () {
                                    Navigator.push(
                                      context,
                                      SlideRightRoute(
                                        page: BodypartsPage(),
                                      ),
                                    );
                                  },
                                  image: 'assets/images/bodyparts.png')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _vocabularybutton(
  // text,
  // image,
  // function
  // ) {
  // return Container(
  //   child: Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
  //     child: SizedBox(
  //       height: 150,
  //       width: 150,
  //         child: ElevatedButton(
  //           onPressed: () {Navigator.of(context).pushReplacement(MaterialPageRoute(
  //                         builder: (BuildContext context) => function()));
  //                         },
  //             style: ButtonStyle(
  //               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //                 RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(30.0),
  //                 ),
  //               ),
  //               elevation: MaterialStateProperty.all(3),
  //               backgroundColor: MaterialStateProperty.all(kPrimaryWhiteColor),
  //             ),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Container(
  //                 height: 100,
  //                 width: 110,
  //                 child: Image(
  //                   image: AssetImage(
  //                     image
  //                   )
  //                 ),
  //               ),
  //               SizedBox(height: 15),
  //               Text(
  //                 text,
  //                 style: TextStyle(
  //                   fontFamily: 'Poppins',
  //                   fontWeight: FontWeight.w500,
  //                   fontSize: 16,
  //                   color:primaryColor
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //     ),
  //   ),
  // );
  // }

}
