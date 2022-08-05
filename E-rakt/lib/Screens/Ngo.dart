import 'package:codebreak_e_rakta/Widgets/BloodInfoCard.dart';
import 'package:codebreak_e_rakta/Widgets/Ngo_Card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ngo extends StatefulWidget {
  const Ngo({Key? key}) : super(key: key);

  @override
  State<Ngo> createState() => _NgoState();
}

class _NgoState extends State<Ngo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "NGO's",
          style: GoogleFonts.aBeeZee(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      // TODO: WHOLE PAGE
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.red,
        //     width: 2,
        //   ),
        // ),
        // TODO: Card
        child: SingleChildScrollView(
          child: Column(
            children: [
              NgoCard(num:1),
              NgoCard(num:2),
              NgoCard(num:3),
              NgoCard(num:4),
              NgoCard(num:5),
            ],
          ),
        ),
      ),
    );
  }
}
