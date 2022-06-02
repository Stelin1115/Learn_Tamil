// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';

class VocabularyButton extends StatelessWidget {
  final String text;
  final image;
  final Function() press;

  const VocabularyButton(
      {Key? key, required this.text, required this.press, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          // height: 120,
          // width:120,
          height: screenHeight * 1/5.0,
          width: screenWidth* 1/2.7,
          child: ElevatedButton(
            onPressed: press,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              elevation: MaterialStateProperty.all(3),
              backgroundColor: MaterialStateProperty.all(kPrimaryWhiteColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 1/8.1,
                  width: screenWidth * 1/4,
                  child: Image(image: AssetImage(image)),
                ),
                SizedBox(height: screenHeight * 1/55),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: primaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
