import 'package:flutter/material.dart';
import 'package:learn_tamil/Auth/ResetPassword/ResetPasswordEmail.dart';
import 'package:learn_tamil/Components/buttons/SigninPageButton.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/views/Home/HomeScreen.dart';

class ResetPasswordConfirmPage extends StatefulWidget {
  const ResetPasswordConfirmPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordConfirmPage> createState() =>
      _ResetPasswordConfirmPageState();
}

class _ResetPasswordConfirmPageState extends State<ResetPasswordConfirmPage> {
  bool showCreateNewPassword = true;
  bool showConfirmNewPassword = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'New Password',
          style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ResetPasswordEmailPage()));
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: primaryColor,
          ),
        ),
        backgroundColor: kPrimaryPinkColor,
        elevation: 0,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 1 / 25),
                Text(
                  'Your new password must be different from old password.',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: screenHeight * 1 / 20),
                _createnewpassword(),
                SizedBox(height: screenHeight * 1 / 80),
                _confirmnewpassword(),
                SizedBox(height: screenHeight * 1 / 40),
                SigninPageButton(text: 'Confirm', function: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  _createnewpassword() {
    return Container(
      height: 40,
      child: TextFormField(
        style:
            TextStyle(fontFamily: 'Poppins', fontSize: 16, color: primaryColor),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        obscureText: showCreateNewPassword,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          hintText: "Enter new password",
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
              onPressed: () => setState(
                  () => showCreateNewPassword = !showCreateNewPassword),
              icon: Icon(showCreateNewPassword
                  ? Icons.visibility_off
                  : Icons.visibility),
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

  _confirmnewpassword() {
    return Container(
      height: 40,
      child: TextFormField(
        style:
            TextStyle(fontFamily: 'Poppins', fontSize: 16, color: primaryColor),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        obscureText: showConfirmNewPassword,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          hintText: "Confirm password",
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
              onPressed: () => setState(
                  () => showConfirmNewPassword = !showConfirmNewPassword),
              icon: Icon(showConfirmNewPassword
                  ? Icons.visibility_off
                  : Icons.visibility),
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
