import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invi/auth_screen.dart';
import 'package:invi/intropage.dart';
// import 'package:invi/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN = "Login";

  @override
  void initState() {
    super.initState();

    whereToGo();




  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.blue,

        child: Center(child: Text('INVI',style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),)),


      ),
    );
  }

  void whereToGo() async {
    var sharedPref =await SharedPreferences.getInstance();
    
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
    
    
    Timer(Duration(seconds: 2),() {
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context) =>IntroPage(),
              ));
        }
        else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context) =>AuthScreen(),
              ));

        }

      }
      else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (context) =>AuthScreen(),
            ));
      }


    });

  }
}