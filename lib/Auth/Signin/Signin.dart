// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/buttons/SigninPageButton.dart';
import 'package:learn_tamil/Components/constrants.dart';
import 'package:learn_tamil/Auth/Signup/Signup.dart';
import 'package:learn_tamil/views/Home/HomeScreen.dart';
import 'package:learn_tamil/views/Module/Module.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({ Key? key }) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36.0
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
                        image: AssetImage("assets/images/signin.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*(1/40)),
                Align(
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
                ),
                SizedBox(height: screenHeight*(1/30),),
                _username(),
                SizedBox(height: 8,),
                _password(),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.bottomRight,
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
                SizedBox(height: screenHeight*(1/50),),
                LoginPageButton(
                  text: "Sign in", 
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
                    "Don't have account?",
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => SignupPage()
                    )
                    );
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
                )
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
          prefixIcon: Icon(Icons.person_outline_outlined, color: kPrimaryGreyColor),
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
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16, 
          color: primaryColor
        ),
        cursorColor: primaryColor,
        keyboardType: TextInputType.text,
        obscureText: showPasswordSignin,
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
                onPressed: () => setState(() => showPasswordSignin = !showPasswordSignin),
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