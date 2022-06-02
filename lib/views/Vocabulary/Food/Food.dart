// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/buttons/Learn.dart';
import 'package:learn_tamil/Components/buttons/LearnBox.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Vocabulary/Vocabulary.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

List box = [
  {"name": "Avacoda"},
  {"name": "Avacoda"},
  {"name": "Avacoda"},
  {"name": "Avacoda"},
];

class _FoodPageState extends State<FoodPage> {

  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Food',
          style: TextStyle(
              color: kPrimaryWhiteColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300),
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
            Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/intersection.png'),
                  ),
                ),
              ],
            ),
            Container(
              child: Image(
                image: AssetImage('assets/images/group-40.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        'Food names - ',
                        style: TextStyle(
                            color: kPrimaryWhiteColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                      ),
                      Text(
                        "level 01",
                        style: TextStyle(
                            color: kPrimaryWhiteColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 1 / 100),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      height: screenHeight * 8.5/10,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                        height: 300,
                                        width: screenWidth,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: kPrimaryWhiteColor,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    'name',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 20,
                                                        color: primaryColor,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  Checkbox(
                                                    checkColor: kPrimaryWhiteColor,
                                                    activeColor: kPrimaryGreenColor,
                                                    value: this.valuefirst,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        print('checked');
                                                        this.valuefirst = value!;
                                                      });
                                                    },
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 195,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/images/avocado.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25,
                                              child: Text(
                                                'எறும்பு',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 20,
                                                    color: primaryColor,
                                                    fontFamily: 'Pavanam'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    'Avacoda',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 20,
                                                        color: primaryColor,
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons.mic,
                                                          color: primaryColor,
                                                          size: 23))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
