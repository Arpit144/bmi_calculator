import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return MyHomePage();
    },));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(child: Text('BMI Application  \n by Arpit Patel',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'PT',color: Colors.white),)),
        ),
      ),
    );
  }
}
