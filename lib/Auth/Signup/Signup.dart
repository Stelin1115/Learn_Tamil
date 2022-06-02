// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/buttons/SigninPageButton.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/Auth/Signin/Signin.dart';
import 'package:learn_tamil/views/Home/HomeScreen.dart';
import 'package:learn_tamil/views/Module/Module.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({ Key? key }) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

    bool showPasswordSignup = true;
    bool showPasswordSignup2 = true;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryPinkColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:47),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Hello!",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "வணக்கம்",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Pavanam'
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * (1/3.3),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/signup.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*(1/40)),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: kPrimaryRedColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*(1/30),),
                _username(),
                SizedBox(height: 8,),
                _email(),
                SizedBox(height: 8,),
                _createpassword(),
                SizedBox(height: 8,),
                _confirmpassword(),
                SizedBox(height: screenHeight*(1/50),),
                SigninPageButton(
                  text: "Sign up", 
                  function: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()
                    )
                    );
                  }
                ),
                SizedBox(height: screenHeight*(1/25),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Already have account?",
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SigninPage()
                    )
                    );
                  },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _username() {
    return Container(
      height: 40,
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16, 
          color: primaryColor
        ),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical:0),
          hintText: "Enter username",
          hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: kPrimaryGreyColor,
            fontWeight: FontWeight.w300,
          ),
          fillColor: kPrimaryWhiteColor,
          filled: true,
          prefixIcon: Icon(
            Icons.person_outline_outlined, 
            color: kPrimaryGreyColor
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

  _email() {
    return Container(
      height: 40,
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16, 
          color: primaryColor
        ),
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

  _createpassword() {
    return Container(
      height: 40,
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16, 
          color: primaryColor
        ),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        obscureText: showPasswordSignup,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical:0),
          hintText: "Enter password",
          hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: kPrimaryGreyColor,
            fontWeight: FontWeight.w300,
          ),
          fillColor: kPrimaryWhiteColor,
          filled: true,
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
           color: kPrimaryGreyColor
          ),
          suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () => setState(() => showPasswordSignup = !showPasswordSignup),
                icon: Icon(
                    showPasswordSignup ? Icons.visibility_off : Icons.visibility),
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

  _confirmpassword() {
    return Container(
      height: 40,
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16, 
          color: primaryColor
        ),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        obscureText: showPasswordSignup2,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical:0),
          hintText: "Confirm password",
          hintStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: kPrimaryGreyColor,
            fontWeight: FontWeight.w300,
          ),
          fillColor: kPrimaryWhiteColor,
          filled: true,
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
           color: kPrimaryGreyColor
          ),
          suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () => setState(() => showPasswordSignup2 = !showPasswordSignup2),
                icon: Icon(
                    showPasswordSignup2 ? Icons.visibility_off : Icons.visibility),
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