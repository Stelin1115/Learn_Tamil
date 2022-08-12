// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/ResetPassword/ResetPassword.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/ScaleRoutePage.dart';
import 'package:learn_tamil/Components/Widgets/PageTransition/SlideRightRoutePage.dart';
import 'package:learn_tamil/Components/buttons/SigninPageButton.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/Auth/Signup/Signup.dart';
import 'package:learn_tamil/views/Home/HomeScreen.dart';
import 'package:learn_tamil/views/Module/ModulePage.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool showPasswordSignin = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      body: SingleChildScrollView(
        child: Responsive(
            mobile: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 47),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: hello(),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: greeting(),
                    ),
                    image(screenWidth, screenHeight),
                    SizedBox(height: screenHeight * (1 / 40)),
                    signin_text(),
                    SizedBox(
                      height: screenHeight * (1 / 30),
                    ),
                    _username(),
                    SizedBox(
                      height: 8,
                    ),
                    _password(),
                    SizedBox(
                      height: 10,
                    ),
                    forgotpassword(context),
                    SizedBox(
                      height: screenHeight * (1 / 50),
                    ),
                    signin(context),
                    SizedBox(
                      height: screenHeight * (1 / 25),
                    ),
                    donthaveaccount(),
                    signup(context),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
            tabletpotrait: Column(children: [
              Container(
                height: screenHeight * 1 / 2,
                width: screenWidth,
                decoration: BoxDecoration(color: kPrimaryWhiteColor),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      hello(),
                      SizedBox(
                        width: 10,
                      ),
                      greeting(),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 1 / 20,
                  ),
                  image(screenWidth, screenHeight),
                ]),
              ),
              Container(
                height: screenHeight * 1 / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // decoration: BoxDecoration(color: kPrimaryGreyColor),
                      width: 300,

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            signin_text(),
                            SizedBox(
                              height: screenHeight * (1 / 30),
                            ),
                            _username(),
                            SizedBox(
                              height: 8,
                            ),
                            _password(),
                            SizedBox(
                              height: 10,
                            ),
                            forgotpassword(context),
                            SizedBox(
                              height: screenHeight * (1 / 50),
                            ),
                            signin(context),
                            SizedBox(
                              height: screenHeight * (1 / 25),
                            ),
                            donthaveaccount(),
                            signup(context),
                          ]),
                    ),
                  ],
                ),
              ),
            ]),
            tabletlandscape: Row(children: [
              Container(
                width: screenWidth * 1 / 2,
                height: screenHeight,
                decoration: BoxDecoration(color: kPrimaryWhiteColor),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          hello(),
                          SizedBox(
                            width: 10,
                          ),
                          greeting(),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 1 / 5,
                      ),
                      image(screenWidth, screenHeight)
                    ]),
              ),
              Container(
                width: screenWidth * 1 / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // decoration: BoxDecoration(color: kPrimaryGreyColor),
                      width: 300,

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            signin_text(),
                            SizedBox(
                              height: screenHeight * (1 / 30),
                            ),
                            _username(),
                            SizedBox(
                              height: 8,
                            ),
                            _password(),
                            SizedBox(
                              height: 10,
                            ),
                            forgotpassword(context),
                            SizedBox(
                              height: screenHeight * (1 / 50),
                            ),
                            signin(context),
                            SizedBox(
                              height: screenHeight * (1 / 25),
                            ),
                            donthaveaccount(),
                            signup(context),
                          ]),
                    ),
                  ],
                ),
              ),
            ]),
            desktop: Row(
              children: [
                Container(
                  width: screenWidth * 2 / 3,
                  height: screenHeight,
                  decoration: BoxDecoration(color: kPrimaryWhiteColor),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            hello(),
                            SizedBox(
                              width: 10,
                            ),
                            greeting(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 1 / 8,
                        ),
                        imagedesktop(screenWidth, screenHeight)
                      ]),
                ),
                Container(
                  width: screenWidth * 1 / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // decoration: BoxDecoration(color: kPrimaryGreyColor),
                        width: 300,

                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              signin_text(),
                              SizedBox(
                                height: screenHeight * (1 / 30),
                              ),
                              _username(),
                              SizedBox(
                                height: 8,
                              ),
                              _password(),
                              SizedBox(
                                height: 10,
                              ),
                              forgotpassword(context),
                              SizedBox(
                                height: screenHeight * (1 / 50),
                              ),
                              signin(context),
                              SizedBox(
                                height: screenHeight * (1 / 25),
                              ),
                              donthaveaccount(),
                              signup(context),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        // child: Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 30.0
        //   ),
        //   child: Form(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         SizedBox(height:47),
        //         Align(
        //           alignment: Alignment.bottomLeft,
        //           child: Text(
        //             "Hello!",
        //             style: TextStyle(
        //               color: primaryColor,
        //               fontSize: 24,
        //               fontWeight: FontWeight.w500,
        //               fontFamily: 'Poppins'
        //             ),
        //           ),
        //         ),
        //         Align(
        //           alignment: Alignment.bottomLeft,
        //           child: Text(
        //             "வணக்கம்",
        //             style: TextStyle(
        //               color: primaryColor,
        //               fontSize: 22,
        //               fontWeight: FontWeight.w600,
        //               fontFamily: 'Pavanam'
        //             ),
        //           ),
        //         ),
        //         Align(
        //           alignment: Alignment.center,
        //           child: Container(
        //             width: screenWidth,
        //             height: screenHeight * (1/3.3),
        //             decoration: BoxDecoration(
        //               image: DecorationImage(
        //                 image: AssetImage("assets/images/signin.png"),
        //                 fit: BoxFit.contain,
        //               ),
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: screenHeight*(1/40)),
        //         Align(
        //           alignment: Alignment.bottomLeft,
        //           child: Text(
        //             "Sign in",
        //             style: TextStyle(
        //               color: kPrimaryRedColor,
        //               fontFamily: 'Poppins',
        //               fontWeight: FontWeight.normal,
        //               fontSize: 28,
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: screenHeight*(1/30),),
        //         _username(),
        //         SizedBox(height: 8,),
        //         _password(),
        //         SizedBox(height: 10,),
        //         Align(
        //           alignment: Alignment.bottomRight,
        //           child: GestureDetector(
        //             onTap: () {
        //               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ResetPasswordPage()));
        //             },
        //             child: Text(
        //               "Forget password?",
        //               style: TextStyle(
        //                 color: primaryColor,
        //                 fontFamily: 'Poppins',
        //                 fontWeight: FontWeight.w500,
        //                 fontSize: 15,
        //               ),
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: screenHeight*(1/50),),
        //         SigninPageButton(
        //           text: "Sign in",
        //           function: () {
        //             Navigator.push(context, ScaleRoute(page: HomeScreen()));
        //           }
        //         ),
        //         SizedBox(height: screenHeight*(1/25),),
        //         Align(
        //           alignment: Alignment.bottomRight,
        //           child: Text(
        //             "Don't have account?",
        //             style: TextStyle(
        //               color: primaryColor,
        //               fontFamily: 'Poppins',
        //               fontWeight: FontWeight.w300,
        //               fontSize: 16,
        //             ),
        //           ),
        //         ),
        //         Align(
        //           alignment: Alignment.centerRight,
        //           child: GestureDetector(
        //             onTap: () {
        //             Navigator.push(context, SlideRightRoute(page: SignupPage()));
        //           },
        //             child: Text(
        //               "Sign up",
        //               style: TextStyle(
        //                 color: primaryColor,
        //                 fontFamily: 'Poppins',
        //                 fontWeight: FontWeight.w600,
        //                 fontSize: 16,
        //               ),
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: 10,)
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }

  Align signup(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, SlideRightRoute(page: SignupPage()));
        },
        child: Text(
          "Sign up",
          style: TextStyle(
            color: primaryColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Align donthaveaccount() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "Don't have account?",
        style: TextStyle(
          color: primaryColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
          fontSize: 16,
        ),
      ),
    );
  }

  SigninPageButton signin(BuildContext context) {
    return SigninPageButton(
        text: "Sign in",
        function: () {
          Navigator.push(context, ScaleRoute(page: HomeScreen()));
        });
  }

  Align forgotpassword(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => ResetPasswordPage()));
        },
        child: Text(
          "Forget password?",
          style: TextStyle(
            color: primaryColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Align signin_text() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        "Sign in",
        style: TextStyle(
          color: kPrimaryRedColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.normal,
          fontSize: 28,
        ),
      ),
    );
  }

  Align image(double screenWidth, double screenHeight) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: screenWidth,
        height: screenHeight * (1 / 3.3),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signin.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Align imagedesktop(double screenWidth, double screenHeight) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: screenWidth,
        height: screenHeight * (1 / 2),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/signin.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Text greeting() {
    return Text(
      "வணக்கம்",
      style: TextStyle(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: 'Pavanam'),
    );
  }

  Text hello() {
    return Text(
      "Hello!",
      style: TextStyle(
          color: primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins'),
    );
  }

  _username() {
    return Container(
      height: 40,
      child: TextFormField(
        style:
            TextStyle(fontFamily: 'Poppins', fontSize: 16, color: primaryColor),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          hintText: "Enter username",
          hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: kPrimaryGreyColor,
            fontWeight: FontWeight.w300,
          ),
          fillColor: kPrimaryWhiteColor,
          filled: true,
          prefixIcon:
              Icon(Icons.person_outline_outlined, color: kPrimaryGreyColor),
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
    );
  }

  _password() {
    return Container(
      height: 40,
      child: TextFormField(
        style:
            TextStyle(fontFamily: 'Poppins', fontSize: 16, color: primaryColor),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        obscureText: showPasswordSignin,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          hintText: "Enter password",
          hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: kPrimaryGreyColor,
            fontWeight: FontWeight.w300,
          ),
          fillColor: kPrimaryWhiteColor,
          filled: true,
          prefixIcon:
              Icon(Icons.lock_outline_rounded, color: kPrimaryGreyColor),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () =>
                  setState(() => showPasswordSignin = !showPasswordSignin),
              icon: Icon(
                  showPasswordSignin ? Icons.visibility_off : Icons.visibility),
              color: kPrimaryGreyColor,
              iconSize: 20,
            ),
          ),
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
    );
  }
}
