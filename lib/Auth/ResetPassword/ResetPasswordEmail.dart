import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/ResetPassword/ResetPasswordConfirm.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/Components/Responsive/Responsive.dart';
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
            child: Responsive(
          mobile: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              SizedBox(height: screenHeight * 1 / 8.5),
              checkyourmail(),
              SizedBox(height: 10),
              description(),
              SizedBox(height: screenHeight * 1 / 20),
              imagemoile(screenWidth, screenHeight),
              SizedBox(height: screenHeight * 1 / 20),
              openemailapp(context),
              SizedBox(height: screenHeight * 1 / 70),
              skip(context),
              SizedBox(height: screenHeight * 1 / 20),
              didnotreceive(),
              resend(),
              SizedBox(
                height: 20,
              )
            ]),
          ),
          tabletpotrait: Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(color: kPrimaryGrey2Color),
            child: Center(
              child: Container(
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                    color: kPrimaryWhiteColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        checkyourmail(),
                        SizedBox(
                          height: 20,
                        ),
                        description(),
                        imagetablet(screenWidth, screenHeight),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: openemailapp(context),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        skip(context),
                        SizedBox(height: 30),
                        didnotreceive(),
                        resend(),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          tabletlandscape: Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(color: kPrimaryGrey2Color),
            child: Center(
              child: Container(
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                    color: kPrimaryWhiteColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        checkyourmail(),
                        SizedBox(
                          height: 20,
                        ),
                        description(),
                        imagetablet(screenWidth, screenHeight),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: openemailapp(context),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        skip(context),
                        SizedBox(height: 30),
                        didnotreceive(),
                        resend(),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          
        )),
      ),
    );
  }

  GestureDetector resend() {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          "Resend",
          style: TextStyle(
              color: primaryColor,
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Align didnotreceive() {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Did not receive the email?",
        style: TextStyle(
          color: primaryColor,
          fontFamily: 'Poppins',
          fontSize: 16,
        ),
      ),
    );
  }

  GestureDetector skip(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => SigninPage()));
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          "Skip. I'll confirm later.",
          style: TextStyle(
              color: primaryColor,
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  SigninPageButton openemailapp(BuildContext context) {
    return SigninPageButton(
        text: 'Open email app',
        function: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => ResetPasswordConfirmPage()));
        });
  }

  Align imagetablet(double screenWidth, double screenHeight) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        // width: screenWidth,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/resetpasswordemails.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Align imagemoile(double screenWidth, double screenHeight) {
    return Align(
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
    );
  }

  Text description() {
    return Text(
      'We have sent password recovery instructions to your mail.',
      style:
          TextStyle(color: primaryColor, fontFamily: 'Poppins', fontSize: 16),
    );
  }

  Align checkyourmail() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Check your email !',
        style: TextStyle(
            color: primaryColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: 20),
      ),
    );
  }
}
