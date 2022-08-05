import 'package:get/get.dart';

import '../Widgets/BloodInfoCard.dart';

// import packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Request extends StatefulWidget {
  Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Search App",
          style: GoogleFonts.aBeeZee(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
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
            // TODO: Search Bar
            // Container(
            //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //   margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            //   height: 50,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     // border: Border.all(
            //     //   color: Colors.red,
            //     //   width: 2,
            //     // ),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.start,
            // children: [
            // TODO: ICON  CONTAINER
            // Container(
            //   height: 40,
            //   width: 50,
            //   decoration: BoxDecoration(
            //     color: Colors.black12,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
            //   child: Icon(
            //     Icons.search,
            //     color: Colors.grey,
            //   ),
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            // TODO: SEARCH CONTAINER
            // Container(
            //   margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
            //   height: 40,
            //   width: MediaQuery.of(context).size.width / 1.5,
            //   // decoration: BoxDecoration(
            //   //   color: Colors.black12,
            //   //   borderRadius: BorderRadius.circular(10),
            //   // ),
            //   // child: TextField(
            //   //   decoration: InputDecoration(
            //   //     hintText: "Search",
            //   //     hintStyle: GoogleFonts.aBeeZee(
            //   //       fontSize: 15,
            //   //       fontWeight: FontWeight.bold,
            //   //       color: Colors.grey,
            //   //     ),
            //   //   ),
            //   // ),
            // ),
            // ],
            // ),
            // ),
            BloodInfoCard(num: 0),
            BloodInfoCard(num: 1),
            BloodInfoCard(num: 2),
            BloodInfoCard(num: 3),
            BloodInfoCard(num: 4),
          ],
        )),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final cities = ["Pune", "Surat", "Nashik", "Bhopal", "Banglore"];

  final recentCities = ["Pune", "Surat", "Nashik", "Bhopal", "Banglore"];
  @override
  List<Widget> buildAction(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  // @override
  // Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return BloodInfoCard(num: 0);
  }
}
