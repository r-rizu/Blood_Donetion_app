import 'package:blooddonation/Donate.dart';
import 'package:blooddonation/Profile.dart';
//import 'package:blooddonation/about.dart';
import 'package:blooddonation/dashbord.dart';
import 'package:blooddonation/forget-password.dart';
import 'package:blooddonation/language.dart';
import 'package:blooddonation/login_page.dart';
import 'package:blooddonation/notifiction.dart';
import 'package:blooddonation/refer.dart';
import 'package:blooddonation/request.dart';
import 'package:blooddonation/sign_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: BloodDonationApp2(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "sign_page": (context) => SignUpPage(),
        "ForgetPassword": (context) => ForgetPasswordScreen(),
        "dashbord": (context) => HomePage(),
        "notification": (context) => NotificationPage(),
        "ProfilePage": (context) => ProfilePage(),
        "Donate": (context) => ReceiversListPage(),
        // "Donate2": (context) => ReceiversListPage(),
        "Refer": (context) => ReferFriendScreen(),
        "request": (context) => BloodRequestPage(),
        //"About": (context) => AboutUsPage(),
        "Language": (context) => LanguageSelectionScreen(),
      },
    );
  }
}
