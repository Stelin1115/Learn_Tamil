// import 'package:flutter/material.dart';
// import 'package:learn_tamil/Components/buttons/Learn.dart';
// import 'package:learn_tamil/Components/constrants.dart';
// import 'package:learn_tamil/views/Vocabulary/Vocabulary.dart';

// class FffPage extends StatefulWidget {
//   FffPage({Key? key}) : super(key: key);

//   @override
//   State<FffPage> createState() => _FffPageState();
// }

// class _FffPageState extends State<FffPage> {
//   List food = [
//     {
//       "name": "Avacoda",
//       "image": "assets/images/avacoda.png",
//       "tamilname": "அவகோடா",
//       "spell": "Avacoda"
//     },
//     {
//       "name": "Avacoda",
//       "image": "assets/images/avacoda.png",
//       "tamilname": "அவகோடா",
//       "spell": "Avacoda"
//     },
//     {
//       "name": "Avacoda",
//       "image": "assets/images/avacoda.png",
//       "tamilname": "அவகோடா",
//       "spell": "Avacoda"
//     },
//     {
//       "name": "Avacoda",
//       "image": "assets/images/avacoda.png",
//       "tamilname": "அவகோடா",
//       "spell": "Avacoda"
//     },
//   ];

//   bool valuefirst = false;

//   @override
//   Widget build(BuildContext context) {
//     var screenHeight = MediaQuery.of(context).size.height;
//     var screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: kPrimaryPinkColor,
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Food',
//           style: TextStyle(
//               color: kPrimaryWhiteColor,
//               fontSize: 21,
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.w300),
//         ),
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 builder: (BuildContext context) => VocabularyPage()));
//           },
//           child: Icon(
//             Icons.arrow_back,
//             size: 30,
//             color: kPrimaryWhiteColor,
//           ),
//         ),
//         backgroundColor: kPrimaryRedColor,
//         elevation: 0,
//       ),
//       body: NotificationListener<OverscrollIndicatorNotification>(
//         onNotification: (OverscrollIndicatorNotification overscroll) {
//           overscroll.disallowGlow();
//           return false;
//         },
//         child: Column(
//           children: [
//             Stack(
//               children: <Widget>[
//                 Container(
//                   child: Image(
//                     image: AssetImage('assets/images/intersection.png'),
//                   ),
//                 ),
//                 Container(
//                   child: Image(
//                     image: AssetImage('assets/images/group-40.png'),
//                   ),
//                 ),],),
          
//             SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 36),
//                 child: Column(
//                   children: [
//                     // SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Text(
//                           'Food names - ',
//                           style: TextStyle(
//                               color: kPrimaryWhiteColor,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w300,
//                               fontSize: 21),
//                         ),
//                         Text(
//                           "level 01",
//                           style: TextStyle(
//                               color: kPrimaryWhiteColor,
//                               fontFamily: 'Poppins',
//                               fontWeight: FontWeight.w300,
//                               fontSize: 21),
//                         ),
//                       ],
//                     ),
//                     // SizedBox(height: screenHeight * (1 / 20)),
//                     SizedBox(
//                       width: screenWidth,
//                       height: screenHeight * 0.9,
//                       child: ListView.builder(
//                           itemCount: food.length,
//                           itemBuilder: (BuildContext context, int index) {
//                             return GestureDetector(
//                               child: Column(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.only(bottom: 15),
//                                     child: SizedBox(
//                                       height: 280,
//                                       width: screenWidth,
//                                       child: ElevatedButton(
//                                         onPressed: () {},
//                                         style: ButtonStyle(
//                                           shape: MaterialStateProperty.all<
//                                               RoundedRectangleBorder>(
//                                             RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         30.0)),
//                                           ),
//                                           elevation:
//                                               MaterialStateProperty.all(1),
//                                           backgroundColor:
//                                               MaterialStateProperty.all(
//                                                   kPrimaryWhiteColor),
//                                         ),
//                                         child: Column(
//                                           children: <Widget>[
//                                             SizedBox(
//                                               height: 40,
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 // crossAxisAlignment: CrossAxisAlignment.center,
//                                                 children: <Widget>[
//                                                   Text(
//                                                     food[index]['name'],
//                                                     style: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.w300,
//                                                         fontSize: 21,
//                                                         color: primaryColor,
//                                                         fontFamily: 'Poppins'),
//                                                   ),
//                                                   Checkbox(
//                                                     checkColor:
//                                                         kPrimaryWhiteColor,
//                                                     activeColor:
//                                                         kPrimaryGreenColor,
//                                                     value: this.valuefirst,
//                                                     onChanged: (bool? value) {
//                                                       setState(() {
//                                                         print('checked');
//                                                         this.valuefirst =
//                                                             value!;
//                                                       });
//                                                     },
//                                                   )
//                                                 ],
//                                               ),
//                                             ),
//                                             Container(
//                                               height: 175,
//                                               child: Image(
//                                                 image: AssetImage(
//                                                     food[index]['image']),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               height: 25,
//                                               child: Text(
//                                                 food[index]['tamilname'],
//                                                 style: TextStyle(
//                                                     fontWeight: FontWeight.w300,
//                                                     fontSize: 20,
//                                                     color: primaryColor,
//                                                     fontFamily: 'Pavanam'),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               height: 30,
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: <Widget>[
//                                                   Text(
//                                                     food[index]['spell'],
//                                                     style: TextStyle(
//                                                         fontWeight:
//                                                             FontWeight.w300,
//                                                         fontSize: 20,
//                                                         color: primaryColor,
//                                                         fontFamily: 'Poppins'),
//                                                   ),
//                                                   IconButton(
//                                                       onPressed: () {
//                                                         print('speak');
//                                                       },
//                                                       icon: Icon(Icons.mic,
//                                                           color: primaryColor,
//                                                           size: 23))
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
        
//       ),
//     );
//   }
// }
