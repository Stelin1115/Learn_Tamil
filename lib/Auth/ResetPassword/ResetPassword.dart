// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/ResetPassword/ResetPasswordEmail.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
import 'package:learn_tamil/Components/buttons/SigninPageButton.dart';
import 'package:learn_tamil/Components/constrants.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: resetpassword(),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: primaryColor,
          ),
        ),
        backgroundColor: kPrimaryTransparent,
        elevation: 0,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
            child: Responsive(mobile: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 1 / 25),
              description(),
              SizedBox(height: screenHeight * 1 / 20),
              _resetemail(),
              SizedBox(height: 20),
              sendinstruction(context),
            ],
          ),
        ),
        tabletlandscape: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(color: kPrimaryGrey2Color),
          child: Center(
            child: Container(
              width: 550,
              height: 380,
              decoration: BoxDecoration(color: kPrimaryPinkColor,
              borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                SizedBox(height: 100,
                  child: Center(child: resetpassword())),
                  SizedBox(height: 100,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: description(),
                  ))),
                  SizedBox(height: 35),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Column(
                      children: [
                        _resetemail(),
                        SizedBox(height: 20,),
                        sendinstruction(context),
                      ],
                    ),
                  )
              ]),
            ),
          ),
        ),
        )
        ),
      ),
    );
  }

  SigninPageButton sendinstruction(BuildContext context) {
    return SigninPageButton(
                text: "Send instruction",
                function: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ResetPasswordEmailPage()));
                });
  }

  Text description() {
    return Text(
              'Enter the email associated with your account. We will send instructions to reset your password.',
              style: TextStyle(
                  color: primaryColor, fontSize: 16, fontFamily: 'Poppins'),
            );
  }

  Text resetpassword() {
    return Text(
        'Reset password',
        style: TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400),
      );
  }

  _resetemail() {
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
          hintText: "Enter email",
          hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: kPrimaryGreyColor,
            fontWeight: FontWeight.w300,
          ),
          fillColor: kPrimaryWhiteColor,
          filled: true,
          prefixIcon: Icon(Icons.email, color: kPrimaryGreyColor),
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
