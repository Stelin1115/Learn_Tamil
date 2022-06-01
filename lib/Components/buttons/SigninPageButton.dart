// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';

class LoginPageButton extends StatelessWidget {
  const LoginPageButton(
    {Key? key, 
    required this.text, 
    required this.function})
    : super(key: key);
  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      height: 40,
      width: screenWidth ,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0),
        ),
        onPressed: function,
        padding: EdgeInsets.all(0),
        color: kPrimaryRedColor,
        textColor: kPrimaryWhiteColor,
        child: Text(
          text, 
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14)),
      ),
    );
  }
}
