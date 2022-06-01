// import 'package:flutter/material.dart';
// import 'package:learn_tamil/Components/constrants.dart';

// class LearnBox extends StatefulWidget {
//   final String name;
//   final  pic;
//   final String tamilname;
//   final String spell;
//   final bool valuefirst;

//   const LearnBox(
//       {Key? key,
//       required this.name,
//       required this.pic,
//       required this.tamilname,
//       required this.spell,
//       this.valuefirst = fa})
//       : super(key: key);

//   @override
//   State<LearnBox> createState() => _LearnBoxState();
// }

// class _LearnBoxState extends State<LearnBox> {
  

  
//   @override
//   Widget build(BuildContext context) {
//     var screenWidth = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20),
//       child: Container(
//           height: 300,
//           width: screenWidth,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: kPrimaryWhiteColor,
//           ),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 40,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       widget.name,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w300,
//                           fontSize: 21,
//                           color: primaryColor,
//                           fontFamily: 'Poppins'),
//                     ),
//                     Checkbox(
//                       checkColor: kPrimaryWhiteColor,
//                       activeColor: kPrimaryGreenColor,
//                       value: this.valuefirst,
//                       onChanged: (bool? value) {
//                         setState(() {
//                           print('check');
//                           this.valuefirst = value!;
//                         });
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 195,
//                 child: Image(
//                   image: AssetImage(widget.pic),
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//                 child: Text(
//                   widget.tamilname,
//                   style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontSize: 20,
//                       color: primaryColor,
//                       fontFamily: 'Pavanam'),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       widget.spell,
//                       style: TextStyle(
//                           fontWeight: FontWeight.w300,
//                           fontSize: 20,
//                           color: primaryColor,
//                           fontFamily: 'Poppins'),
//                     ),
//                     IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.mic, color: primaryColor, size: 23))
//                   ],
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }
