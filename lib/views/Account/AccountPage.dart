// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Components/Charts/BarChart/BarChart.dart';
import 'package:learn_tamil/Components/Charts/BarChart/LearnersChart.dart';
import 'package:learn_tamil/Components/Charts/BarChart/learnedSeries.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/ScaleRoutePage.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:learn_tamil/views/Setting/SettingPage.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<LearnedSeries> data = [
    LearnedSeries(
        month: 'Jan',
        learned: 100,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Feb',
        learned: 200,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Mar',
        learned: 250,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Apr',
        learned: 50,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'May',
        learned: 300,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Jun',
        learned: 150,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Jul',
        learned: 220,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Aug',
        learned: 100,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Sep',
        learned: 80,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Oct',
        learned: 160,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Nov',
        learned: 40,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
    LearnedSeries(
        month: 'Dec',
        learned: 70,
        barColor: charts.ColorUtil.fromDartColor(kPrimaryPurpleColor)),
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Account',
      //     style: TextStyle(
      //         color: kPrimaryWhiteColor,
      //         fontSize: 20,
      //         fontFamily: 'Poppins',
      //         fontWeight: FontWeight.w400),
      //   ),
      //   leading: GestureDetector(
      //     onTap: () {},
      //     child: Icon(
      //       Icons.arrow_back,
      //       size: 30,
      //       color: kPrimaryWhiteColor,
      //     ),
      //   ),
      //   backgroundColor: kPrimaryRedColor,
      //   elevation: 0,
      // ),
      body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return false;
          },
          child: Responsive(
            mobile: Stack(
              children: [
                Image(image: AssetImage('assets/images/intersection.png')),
                Image(image: AssetImage('assets/images/group-40.png')),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              color: kPrimaryWhiteColor,
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        Stack(
                          clipBehavior: Clip.hardEdge, children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: kPrimaryWhiteColor,
                                  borderRadius: BorderRadius.circular(40)),
                              // height: screenHeight * 8.5 / 10,
                              width: screenWidth,
                              child: Column(children: [
                                Image(
                                    image: AssetImage(
                                        'assets/images/accountintersection.png')),
                                SizedBox(height: 50),
                                Text(
                                  '@' + 'Name',
                                  style: TextStyle(
                                      color: kPrimaryRedColor,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'email',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 60,
                                      child: Column(
                                        children: [
                                          Text(
                                            '01',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'level',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                      child: Column(
                                        children: [
                                          Text(
                                            '06',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'lessons',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                      child: Column(
                                        children: [
                                          Text(
                                            '01',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            'Quizzes',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                LearnersChart(
                                  data: data,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                CircularPercentIndicator(
                                  radius: 50.0,
                                  lineWidth: 8.0,
                                  animation: true,
                                  percent: 60 / 100,
                                  center: Text(
                                    60.toString() + "%",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimaryRedColor,
                                    ),
                                  ),
                                  backgroundColor: kPrimaryPurpleColor,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: kPrimaryRedColor,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                // GestureDetector(
                                //   onTap: () {
                                //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SettingPage()));
                                //   },
                                //   child: Row(
                                //     children: [
                                //       SizedBox(width:15),
                                //       Icon(
                                //         CupertinoIcons.settings,
                                //         size: 24,
                                //         color: kPrimaryColor2,
                                //       ),
                                //       SizedBox(width: 20,),
                                //       Text(
                                //         'Settings',
                                //         style: TextStyle(
                                //             fontSize: 16,
                                //             fontFamily: 'Poppins',
                                //             color: kPrimaryColor2),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        ScaleRoute(page: SigninPage()));
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(width: 15),
                                      Icon(
                                        Icons.logout,
                                        size: 24,
                                        color: kPrimaryColor2,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Sign out',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            color: kPrimaryColor2),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ]),
                            ),
                            // Positioned(
                            //   // top: -1,
                            //   // width: screenWidth * 8.48 / 10,
                            //   child: Image(
                            //       image: AssetImage(
                            //           'assets/images/accountintersection.png')),
                            // ),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: screenHeight * 1 / 14,
                              child: CircleAvatar(
                                radius: 40.0,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  "assets/images/profile.webp",
                                ),
                                // child: Image.asset('assets/images/download.jpeg',fit:BoxFit.cover,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            tabletpotrait: Container(),
            tabletlandscape: Stack(
              children: [
                Image(
                    image: AssetImage('assets/images/intersectiontablet.png')),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            color: kPrimaryWhiteColor,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Stack(
                        clipBehavior: Clip.hardEdge, children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kPrimaryWhiteColor,
                                borderRadius: BorderRadius.circular(40)),
                            width: screenWidth,
                            // height: screenHeight* 8/10,
                            child: Column(children: [
                              Image(
                                  image: AssetImage(
                                      'assets/images/accountintersectiontablet.png')),
                              SizedBox(height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 300,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 60,
                                          child: Column(
                                            children: [
                                              Text(
                                                '01',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'level',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 60,
                                          child: Column(
                                            children: [
                                              Text(
                                                '06',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'lessons',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 60,
                                          child: Column(
                                            children: [
                                              Text(
                                                '01',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                'Quizzes',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          '@' + 'Name',
                                          style: TextStyle(
                                              color: kPrimaryRedColor,
                                              fontSize: 16,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'email',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  LearnersChart(
                                    data: data,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 80.0,
                                    lineWidth: 12.0,
                                    animation: true,
                                    percent: 60 / 100,
                                    center: Text(
                                      60.toString() + "%",
                                      style: TextStyle(
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w700,
                                        color: kPrimaryRedColor,
                                      ),
                                    ),
                                    backgroundColor: kPrimaryPurpleColor,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: kPrimaryRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, ScaleRoute(page: SigninPage()));
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Icon(
                                      Icons.logout,
                                      size: 30,
                                      color: kPrimaryColor2,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Sign out',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          color: kPrimaryColor2),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ]),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: screenHeight * 1 / 12,
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                "assets/images/profile.webp",
                              ),
                              // child: Image.asset('assets/images/download.jpeg',fit:BoxFit.cover,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ]),
                  ),
                )
              ],
            ),
            desktop: Stack(
              children: [
                Image(
                    image: AssetImage('assets/images/intersectiondesktop.png')),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            color: kPrimaryWhiteColor,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Stack(
                        clipBehavior: Clip.hardEdge, children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kPrimaryWhiteColor,
                                borderRadius: BorderRadius.circular(40)),
                            width: screenWidth,
                            // height: screenHeight* 8/10,
                            child: Column(children: [
                              Image(
                                  image: AssetImage(
                                      'assets/images/accountintersectiontablet.png')),
                              SizedBox(height: 100),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 500,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 100,
                                          child: Column(
                                            children: [
                                              Text(
                                                '01',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                'level',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 22),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Column(
                                            children: [
                                              Text(
                                                '06',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                'lessons',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 22),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Column(
                                            children: [
                                              Text(
                                                '01',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24),
                                              ),
                                              Text(
                                                'Quizzes',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 22),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          '@' + 'Name',
                                          style: TextStyle(
                                              color: kPrimaryRedColor,
                                              fontSize: 25,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'email',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 25,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  LearnersChart(
                                    data: data,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 80.0,
                                    lineWidth: 12.0,
                                    animation: true,
                                    percent: 60 / 100,
                                    center: Text(
                                      60.toString() + "%",
                                      style: TextStyle(
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w700,
                                        color: kPrimaryRedColor,
                                      ),
                                    ),
                                    backgroundColor: kPrimaryPurpleColor,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: kPrimaryRedColor,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, ScaleRoute(page: SigninPage()));
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Icon(
                                      Icons.logout,
                                      size: 30,
                                      color: kPrimaryColor2,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Sign out',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Poppins',
                                          color: kPrimaryColor2),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ]),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: screenHeight * 1 / 12,
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                "assets/images/profile.webp",
                              ),
                              // child: Image.asset('assets/images/download.jpeg',fit:BoxFit.cover,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
