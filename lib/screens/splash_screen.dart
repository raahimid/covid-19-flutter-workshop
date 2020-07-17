//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_covid_dashboard_ui/config/palette.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'dart:async';
//import 'bottom_nav_screen.dart';
//import 'package:flutter_covid_dashboard_ui/data/data.dart';
//
//class SplashScreen extends StatefulWidget {
//  @override
//  _SplashScreenState createState() => _SplashScreenState();
//}
//
//class _SplashScreenState extends State<SplashScreen> {
//  @override
//  void initState() {
      //TODO FetchAPI
//    super.initState();
//    _mockCheckForSession().then((status) {
//      if (status) {
//        _navigateToHome();
//      } else {
//        _navigateToLogin();
//      }
//    });
//  }
//
//  Future<bool> _mockCheckForSession() async {
//    await Future.delayed(Duration(milliseconds: 4000), () {});
//
//    return true;
//  }
//
//  void _navigateToHome() {
//    Navigator.of(context).pushReplacement(MaterialPageRoute(
//        builder: (BuildContext context) => BottomNavScreen()));
//  }
//
//  void _navigateToLogin() {
//    Navigator.of(context).pushReplacement(MaterialPageRoute(
//        builder: (BuildContext context) => BottomNavScreen()));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: BoxDecoration(
//        color: Palette.primaryColor,
//      ),
//      child: Scaffold(
//        backgroundColor: Colors.transparent,
//        body: Center(
//          child: Padding(
//            padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 20.0),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                Spacer(),
//                Text(
//                  'COVID-19\nInfo App',
//                  textAlign: TextAlign.center,
//                  style: GoogleFonts.poppins(
//                    fontSize: 40.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//                SizedBox(height: 90.0),
//                Text(
//                  'By PantherHacks\nTeam',
//                  textAlign: TextAlign.center,
//                  style: GoogleFonts.poppins(
//                    fontSize: 20.0,
//                    color: Colors.white,
//                  ),
//                ),
//                SizedBox(height: 40.0),
//                Row(
//                  children: <Widget>[
//                    Spacer(),
//                    Image.asset(
//                      'assets/images/fiu_logo.png',),
//                    SizedBox(width: 15.0),
//                    Image.asset(
//                      'assets/images/sh_logo.png',
//                      scale: 3.0,
//                    ),
//                    SizedBox(width: 30.0),
//                    Image.asset(
//                      'assets/images/upe_logo.png',),
//                    Spacer(),
//                  ],
//                ),
//                Spacer(),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
