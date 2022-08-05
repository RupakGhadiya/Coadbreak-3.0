import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/Buttons.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(134, 233, 228, 228),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black12),
                  // ),
                  height: 250.0,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      // Positioned(
                      //   // bottom: 0,
                      //   child: Container(
                      //       alignment: Alignment.center,
                      //     child: Lottie.network(
                      //       "https://assets3.lottiefiles.com/packages/lf20_sukvt8nd.json",
                      //       animate: true,
                      //     ),
                      //   ),
                      // ),

                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          child: Lottie.network(
                            "https://assets5.lottiefiles.com/private_files/lf30_GjhcdO.json",
                            animate: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30),
                      height: 45.0,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   border: Border.all(
                      //       color: const Color.fromARGB(255, 235, 196, 105),
                      //       width: 2.0),
                      // ),
                      child: Center(
                        child: Text(
                          "Forgot Password ?",
                          style: GoogleFonts.mina(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),

                    // ---------------------------------------------------------------------

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

                    SizedBox(height: 40.0),

                    // Buttons
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
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
