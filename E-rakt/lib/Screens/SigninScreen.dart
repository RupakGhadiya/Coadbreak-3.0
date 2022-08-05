import '../Widgets/Input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  // Controllers for the text fields
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> SignInWithGoogle() async {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        await FirebaseAuth.instance.signInWithCredential(authCredential);

        Get.toNamed('/bottom-navBar');
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromARGB(134, 233, 228, 228),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 1.0,
                    //   ),
                    // ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 210.0,
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: Colors.black,
                    //     width: 2.0,
                    //   ),
                    // ),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            alignment: Alignment.center,
                            child: Lottie.network(
                              "https://assets4.lottiefiles.com/packages/lf20_06qof0oc.json",
                              animate: true,
                            ),
                          ),
                        ),
                        Positioned(
                          // Patient Gif
                          child: Container(
                            alignment: Alignment.center,
                            child: Lottie.network(
                              "https://assets3.lottiefiles.com/packages/lf20_jaxcak0u.json",
                              animate: false,
                              // height: 1000.0,
                            ),
                            // decoration: BoxDecoration(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 45.0,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(10.0),
                        //   border: Border.all(
                        //       color: Colors.black,
                        //       width: 2.0),
                        // ),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                // padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Welcome to E-Rakta Seva",
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                            ],
                          ),
                        ),
                      ),

                      // ---------------------------------------------------------------------

                      SizedBox(
                        height: 30.0,
                      ),

                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 3),
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.redAccent,
                              width: 0.1,
                            ),
                          ),
                          // TODO:
                          child: TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15.0),
                              border: InputBorder.none,
                              hintText: "Email Id",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 3),
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.redAccent,
                            width: 0.1,
                          ),
                        ),
                        child: TextField(
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Password ",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),

                      SizedBox(height: 20.0),

                      MaterialButton(
                        onPressed: () {
                          SignInWithGoogle();
                          Get.toNamed('/bottom-navBar');
                          // if (SignInWithGoogle()==true) {
                          //   Get.toNamed('/bottom-navBar');
                          // } else {
                          //   print("Error");
                          // }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50.0,
                        minWidth: 310.0,
                        splashColor: Color.fromARGB(255, 219, 103, 68),
                        color: Colors.redAccent,
                        child: const Text(
                          "Sign In with Google",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      SizedBox(height: 20.0),

                      // Forgot Password Link
                      Container(
                        // decoration: BoxDecoratio
                        //   border: Border.all(color: Colors.black12, width: 0.1),
                        // ),
                        height: 50.0,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed('/forgot-screen');
                            },
                            child: Text(
                              "Forgot password ?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 160.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                            child: Center(
                              child: Text(
                                "Don't have an account ?",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed('/signup');
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 0, 40),
                              child: Center(
                                child: Text(
                                  "Register !",
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
      ),
    );
  }
}
