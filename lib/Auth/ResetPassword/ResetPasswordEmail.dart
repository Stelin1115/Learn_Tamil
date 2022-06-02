import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/ResetPassword/ResetPasswordConfirm.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Components/buttons/SigninPageButton.dart';
import 'package:learn_tamil/Components/constrants.dart';

class ResetPasswordEmailPage extends StatelessWidget {
  const ResetPasswordEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              SizedBox(height: screenHeight * 1 / 8.5),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Check your email !',
                  style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We have sent password recovery instructions to your mail.',
                style: TextStyle(
                    color: primaryColor, fontFamily: 'Poppins', fontSize: 16),
              ),
              SizedBox(height: screenHeight * 1 / 20),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: screenWidth,
                  height: screenHeight * (1 / 3),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/resetpasswordemails.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 1 / 20),
              SigninPageButton(
                  text: 'Open email app',
                  function: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ResetPasswordConfirmPage()));
                  }),
                  SizedBox(height: screenHeight* 1/70),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SigninPage()));
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Skip. I'll confirm later.",
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: screenHeight* 1/20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Did not receive the email?",
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Resend",
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  )
            ]),
          ),
        ),
      ),
    );
  }

  

}
