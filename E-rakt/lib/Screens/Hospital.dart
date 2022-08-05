// import custom widgets
import 'package:codebreak_e_rakta/Widgets/AmbulanceCard.dart';

import '../Widgets/BloodInfoCard.dart';

// import packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  State<Hospital> createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Hospital",
              style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            // TODO: TOP NAVIGATION BAR
            bottom: new TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Hospital",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  icon: Icon(Icons.local_hospital),
                ),
                Tab(
                  child: Text(
                    "Ambulance",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  icon: Icon(Icons.bus_alert),
                ),
              ],
            ),
          ),
          body: Scaffold(
            backgroundColor: Colors.black12,
            body: TabBarView(
              children: [
                // TODO: Hospital Bar Page
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Colors.green,
                  //     width: 2,
                  //   ),
                  // ),
                  // backgroundColor: Colors.black12,
                  child: SingleChildScrollView(
                    
                    child: Container(
                      // height: 650,
                      // margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     color: Colors.red,
                      //     width: 2,
                      //   ),
                      // ),
                      child: Column(
                        children: [
                          BloodInfoCard(num: 1),
                          BloodInfoCard(num: 2),
                          BloodInfoCard(num: 3),
                          BloodInfoCard(num: 4),
                          BloodInfoCard(num: 5),
                          BloodInfoCard(num: 6),
                        ],
                      ),
                    ),
                  ),
                ),
                // TODO: Ambulance Bar Page
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Colors.green,
                  //     width: 2,
                  //   ),
                  // ),
                  // backgroundColor: Colors.black12,
                  child: SingleChildScrollView(    
                    child: Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     color: Colors.red,
                      //     width: 2,
                      //   ),
                      // ),
                      // TODO: Ambulance Bar Page
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                AmbulanceCard(num: 7),
                                AmbulanceCard(num: 4),
                                AmbulanceCard(num: 3),
                                AmbulanceCard(num: 2),
                                AmbulanceCard(num: 1),
                                AmbulanceCard(num: 0),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
