// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class ModuleButtons extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color backcolor;
  final Color bordercolor;
  final Function() press;
  const ModuleButtons({
    Key? key,
    required this.text,
    required this.textcolor,
    required this.backcolor,
    required this.press,
    required this.bordercolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: SizedBox(
          // height: screenHeight * 1/5,
          // width: screenWidth * 1/2.5,
          height: 140,
          width: 140,
          child: ElevatedButton(
            onPressed: press,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(backcolor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: bordercolor)))),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: textcolor),
            ),
          ),
        ),
      ),
    );
  }
}
