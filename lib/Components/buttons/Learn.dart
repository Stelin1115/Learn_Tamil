// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_tamil/Components/constrants.dart';

class Learn extends StatefulWidget {
  final String name;
  final Image image;
  final String tamilname;
  final String spell;

  Learn(
      {Key? key,
      required this.name,
      required this.image,
      required this.tamilname,
      required this.spell})
      : super(key: key);

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 300,
        width: 300,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            elevation: MaterialStateProperty.all(1),
            backgroundColor: MaterialStateProperty.all(kPrimaryWhiteColor),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'name',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 21,
                          color: primaryColor,
                          fontFamily: 'Poppins'),
                    ),
                    // Checkbox(
                    //   checkColor: kPrimaryWhiteColor,
                    //   activeColor: kPrimaryGreenColor,
                    //   value: this.valuefirst,
                    //   onChanged: (bool? value) {
                    //     setState(() {
                    //       this.valuefirst = value!;
                    //     });
                    //   },
                    // )
                  ],
                ),
              ),
              Container(
                height: 195,
                child: Image(
                  image: AssetImage('assets/images/avocado.png'),
                ),
              ),
              SizedBox(
                height: 25,
                child: Text(
                  'எறும்பு',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: primaryColor,
                      fontFamily: 'Pavanam'),
                ),
              ),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Avacoda',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: primaryColor,
                          fontFamily: 'Poppins'),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mic, color: primaryColor, size: 23))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
