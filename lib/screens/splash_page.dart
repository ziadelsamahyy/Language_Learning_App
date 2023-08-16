import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:language_learning_app/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()
    )));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      body:SpinKitCircle(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}


