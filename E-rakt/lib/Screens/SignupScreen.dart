// imports
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../Widgets/Buttons.dart';
import '../Widgets/Input.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(134, 233, 228, 228),
          border: Border.all(
            // color: Colors.red,
            width: 5.0,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Colors.black,
                  //     width: 1.0,
                  //   ),
                  // ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Colors.black,
                  //     width: 2.0,
                  //   ),
                  // ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  height: 250.0,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          child: Lottie.network(
                            "https://assets7.lottiefiles.com/packages/lf20_u1vbg6qk.json",
                            animate: true,
                            height: 800.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      // margin: const EdgeInsets.all(1.0),
                      height: 45.0,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   border: Border.all(
                      //       color: const Color.fromARGB(255, 235, 196, 105),
                      //       width: 2.0),
                      // ),
                      child: Center(
                        child: Text(
                          "Welcome to E-Rakta SEVA ",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(25, 10, 25, 3),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 219, 103, 68),
                            width: 0.1,
                          ),
                        ),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Email Id",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(25, 10, 25, 3),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.redAccent,
                            width: 0.1,
                          ),
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(25, 10, 25, 3),
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.redAccent,
                            width: 0.1,
                          ),
                        ),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    MaterialButton(
                      onPressed: () {
                        Get.toNamed('/bottom-navBar');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50.0,
                      minWidth: 310.0,
                      splashColor: Color.fromARGB(255, 219, 103, 68),
                      color: Colors.redAccent,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                            child: Center(
                              child: Text(
                                "Back to ?",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 219, 103, 68),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/signin');
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 0, 40),
                              child: Center(
                                child: Text(
                                  "Sign In !",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 107, 99, 95),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
