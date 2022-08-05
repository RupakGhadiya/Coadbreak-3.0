// import 'BottomNavBar.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Home",
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 75),
        // decoration: BoxDecoration(
        //   color: Colors.black12,
        //   border: Border.all(color: Colors.green, width: 2),
        // ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/abp.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/abn.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/ap.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/an.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/bp.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/bn.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/op.gif'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 500,
                  width: 366,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/gif/on.gif'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
