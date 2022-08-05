// import Custom Widgets
import 'package:firebase_core/firebase_core.dart';

import 'Screens/ForgotPassword.dart';
import 'Widgets/Input.dart';
import 'Widgets/Buttons.dart';
import 'Widgets/BloodInfoCard.dart';

// import Screens
import 'Screens/SigninScreen.dart';
import 'Screens/SignupScreen.dart';
import 'Screens/BottomNavBar.dart';
import 'Screens/Home.dart';
import 'Screens/Request.dart';
import 'Screens/Ngo.dart';
import 'Screens/Hospital.dart';
import 'Screens/Account.dart';

// import packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/signin', page: () => Signin()),
        GetPage(name: '/signup', page: () => Signup()),
        GetPage(name: '/forgot-screen', page: () => ForgotPassword()),
        GetPage(name: '/bottom-navBar', page: () => BottomNavBar()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/hospital', page: () => Hospital()),
        GetPage(name: '/request', page: () => Request()),
        GetPage(name: '/ngo', page: () => Ngo()),
        GetPage(name: '/account', page: () => Account()),
      ],
      initialRoute: '/signin',
      home: Scaffold(
        body: Signin(),
      ),
    );
  }
}

