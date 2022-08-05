// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Account extends StatefulWidget {
//   const Account({Key? key}) : super(key: key);

//   @override
//   State<Account> createState() => _AccountState();
// }

// class _AccountState extends State<Account> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black12,
//       appBar: AppBar(
//         backgroundColor: Colors.redAccent,
//         title: Text(
//           "Account",
//           style: GoogleFonts.aBeeZee(
//               fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ),
//       body: Scaffold(
//         backgroundColor: Colors.white12,
//         body: Container(
//           margin: EdgeInsets.all(5),
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.fromLTRB(5, 5, 5, 20),
//                 height: 200,
//                 width: 800,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   // border: Border.all(
//                   //   color: Colors.black,
//                   //   width: 1,
//                   // ),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     // TODO:Profile Icon
//                     Container(
//                       margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
//                       height: 150,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         // border: Border.all(
//                         //   color: Colors.redAccent,
//                         //   width: 1,
//                         // ),
//                       ),
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
//                         child: CircleAvatar(
//                           backgroundImage: Image.network(
//                                   "https://i.pinimg.com/originals/ae/24/87/ae24874dd301843548c034a3d2973658.png")
//                               .image,
//                           radius: 50,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 0,
//                     ),
//                     // TODO:Profile Name
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.fromLTRB(9, 10, 5, 10),
//                           height: 100,
//                           width: 170,
//                           decoration: BoxDecoration(
//                               // border: Border.all(
//                               //   color: Colors.green,
//                               //   width: 1,
//                               // ),
//                               ),
//                           child: Container(
//                             margin: EdgeInsets.fromLTRB(5, 15, 5, 5),
//                             child: Text(
//                               "Salil Chandwadkar ",
//                               style: GoogleFonts.aBeeZee(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Divider(
//                   color: Colors.black26,
//                   thickness: 1.0,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(5, 5, 5, 20),
//                 height: 200,
//                 width: 800,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(
//                     color: Colors.black,
//                     width: 1,
//                   ),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Account",
          style: GoogleFonts.aBeeZee(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "add you image URL here "
                  ),
                  fit: BoxFit.cover
                )
              ),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red.withOpacity(0.8),
                      Colors.red.withOpacity(0.7),
                      Colors.red.withOpacity(0.6),
                      Colors.red.withOpacity(0.6),
                      Colors.red.withOpacity(0.4),
                      Colors.red.withOpacity(0.1),
                      Colors.red.withOpacity(0.05),
                      Colors.red.withOpacity(0.025),
                    ]
                  )
                ),
                height: 300,
                width: 300,
                alignment: Alignment(0.0,2.5),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/ae/24/87/ae24874dd301843548c034a3d2973658.png",),
                      
                  ),
                  padding: EdgeInsets.all(60),
                  
                ),
              ),
            ),
      
            SizedBox(
              height: 60,
            ),
            Text(
              "Salil Chandwadkar",
              style: TextStyle(
                fontSize: 25.0,
                color:Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Nashik, India"
              ,style: TextStyle(
                fontSize: 18.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Blood Group : O+",
              style: TextStyle(
                fontSize: 15.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 10,
            ),
            
            SizedBox(
              height: 15,
            ),
      
            Container(
              height: 100,
              width: 280,
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(
                //   color: Colors.black,
                //   width: 1,
                // ),
              ),
              child: Center(
                child: Text(
                  "Vivekananda nagar,manmad,maharashtra",
                  style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.black45,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w300
                ),
                ),
              ),
            ),
            // Card(
            //   margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         // Expanded(
            //         //   child: Column(
            //         //     children: [
            //         //       Text("Project",
            //         //         style: TextStyle(
            //         //             color: Colors.blueAccent,
            //         //             fontSize: 22.0,
            //         //             fontWeight: FontWeight.w600
            //         //         ),),
            //         //       SizedBox(
            //         //         height: 7,
            //         //       ),
            //         //       Text("15",
            //         //         style: TextStyle(
            //         //             color: Colors.black,
            //         //             fontSize: 22.0,
            //         //             fontWeight: FontWeight.w300
            //         //         ),)
            //         //     ],
            //         //   ),
            //         // ),
            //         // Expanded(
            //         //   child:
            //         //   Column(
            //         //     children: [
            //         //       Text("Followers",
            //         //         style: TextStyle(
            //         //             color: Colors.blueAccent,
            //         //             fontSize: 22.0,
            //         //             fontWeight: FontWeight.w600
            //         //         ),),
            //         //       SizedBox(
            //         //         height: 7,
            //         //       ),
            //         //       Text("2000",
            //         //         style: TextStyle(
            //         //             color: Colors.black,
            //         //             fontSize: 22.0,
            //         //             fontWeight: FontWeight.w300
            //         //         ),)
            //         //     ],
            //         //   ),
            //         // ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     RaisedButton(
            //       onPressed: (){
      
            //       },
            //       shape:  RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(80.0),
            //       ),
            //       child: Ink(
            //         decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Colors.pink,Colors.redAccent]
            //           ),
            //           borderRadius: BorderRadius.circular(30.0),
      
            //         ),
            //         child: Container(
            //           constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //           alignment: Alignment.center,
            //           child: Text(
            //             "Contact me",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 letterSpacing: 2.0,
            //                 fontWeight: FontWeight.w300
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     RaisedButton(
            //       onPressed: (){
      
            //       },
            //       shape:  RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(80.0),
            //       ),
            //       child: Ink(
            //         decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Colors.pink,Colors.redAccent]
            //           ),
            //           borderRadius: BorderRadius.circular(80.0),
      
            //         ),
            //         child: Container(
            //           constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //           alignment: Alignment.center,
            //           child: Text(
            //             "Portfolio",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 letterSpacing: 2.0,
            //                 fontWeight: FontWeight.w300
            //             ),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      )
    );
  }
}
