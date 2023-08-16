import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/home_page.dart';
import 'package:language_learning_app/screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/SplashScreen',
      routes:{
        '/HomePage' : (context) =>  HomePage(),
        '/SplashScreen' : (context) =>  SplashScreen(),
      } ,
      debugShowCheckedModeBanner: false,
    );
  }
}

