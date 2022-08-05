import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class BloodInfoCard extends StatefulWidget {
  final int num;
  // final String hospital_name,

  const BloodInfoCard({
    required this.num,
    // this.hospital_name,
    Key? key,
  }) : super(key: key);

  @override
  State<BloodInfoCard> createState() => _BloodInfoCardState();
}

class _BloodInfoCardState extends State<BloodInfoCard> {
  @override
  var bloodgroup = [
    'https://assets10.lottiefiles.com/packages/lf20_d6dmxlhi.json',
    'https://assets10.lottiefiles.com/packages/lf20_mw3to7io.json',
    'https://assets10.lottiefiles.com/packages/lf20_6sbcdpys.json',
    'https://assets10.lottiefiles.com/packages/lf20_wwohioc6.json',
    'https://assets10.lottiefiles.com/packages/lf20_qjvnamie.json',
    'https://assets10.lottiefiles.com/packages/lf20_0ul52rxa.json',
    'https://assets10.lottiefiles.com/packages/lf20_ndukurao.json',
    'https://assets10.lottiefiles.com/packages/lf20_gze7ffbh.json',
  ];

  List<String> hospital_name = [
    "Yashoda Hospital",
    "YashDeep Hospital",
    "Jalaram Hospital,ICU",
    "Hi-Tech Hospital",
    "Sri Ramakrishna Hospital",
    "Sidhakala Hospital",
    "Sri Ramakrishna Hospital",
    "Saibaba Hospital",
  ];

  List<String> address = [
    "Viveka Nand Nagar No.1, Manmad-423104, Dist- Nashik",
    "Narayan Nagar, Manmad-423104, Dist- Nashik",
    "Shivaji Nagar, Manmad-423104, Dist- Nashik",
    "Budhalwadi, Manmad-423104, Dist- Nashik",
    "Naranpeth, Manmad-423104, Dist- Nashik",
    "Gangapur Road, Manmad-423104, Dist- Nashik",
    "Satpura-Ambad, Manmad-423104, Dist- Nashik",
    "Gandhi Chowk, Manmad-423104, Dist- Nashik",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
          // height:,
          decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(children: <Widget>[
            // TODO: BLOOD GROUP ICON CONTAINER
            Container(
              height: MediaQuery.of(context).size.height,
              width: 90,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
              // decoration: BoxDecoration(
              //   color: Colors.black12,
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 1,
              //   ),
              // ),
              child: Center(
                child: Lottie.network(
                  "${bloodgroup[widget.num]}",
                  height: 600,
                ),
              ),
            ),
            // TODO: HOSPITAL NAME AND ADDRESS CONTAINER
            Column(
              children: [
                // TODO: HOSPITAL NAME
                Container(
                  height: 25,
                  width: 220,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                  // decoration: BoxDecoration(
                  //   // color: Colors.black12,
                  //   border: Border.all(
                  //     color: Colors.black,
                  //     width: 1,
                  //   ),
                  // ),
                  child: Text(
                    "${hospital_name[widget.num]}",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
                // TODO: HOSPITAL ADDRESS
                Container(
                  height: 45,
                  width: 220,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                  // decoration: BoxDecoration(
                  //   // color: Colors.black12,
                  //   border: Border.all(
                  //     color: Colors.black,
                  //     width: 1,
                  //   ),
                  // ),
                  child: Text(
                    "${address[widget.num]}",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black38,
                    ),
                  ),
                ),
                // TODO: BUTTONS CONTAINER
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // TODO: SINGLE BUTTON ICON AND NAME
                      Container(
                        // decoration: BoxDecoration(
                        //     border: Border.all(
                        //   color: Colors.black,
                        //   width: 1,
                        // )),
                        height: 55,
                        width: 210,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // TODO: ICON
                            // Container(
                            //   decoration: BoxDecoration(
                            //     border: Border.all(
                            //       color: Colors.black,
                            //       width: 1.0,
                            //     )
                            //   ),
                            //   child: Icon(Icons.bloodtype,size: 20,)
                            // ),
                            // // TODO: NAME
                            // Container(
                            //   decoration: BoxDecoration(),
                            //   child: ,
                            // ),
                            GestureDetector(
                              child: MaterialButton(
                                onPressed: () {
                                  Get.snackbar(
                                    'Response',
                                    'Your Response has been successfully added',
                                    backgroundColor: Colors.white,
                                    duration: Duration(seconds: 2),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                height: 29.0,
                                minWidth: 10.0,
                                splashColor: Color.fromARGB(255, 127, 131, 133),
                                color: Color.fromARGB(255, 85, 87, 88),
                                child: Text(
                                  "Accept",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              child: MaterialButton(
                                onPressed: () {
                                  Get.snackbar(
                                    'Response',
                                    'Your response has been successfully deleted',
                                    backgroundColor: Colors.white,
                                    duration: Duration(seconds: 2),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                height: 29.0,
                                minWidth: 10.0,
                                splashColor: Color.fromARGB(255, 127, 131, 133),
                                color: Color.fromARGB(255, 85, 87, 88),
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                height: 29.0,
                                minWidth: 10.0,
                                splashColor: Color.fromARGB(255, 127, 131, 133),
                                color: Color.fromARGB(255, 85, 87, 88),
                                child: Text(
                                  "Share",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
