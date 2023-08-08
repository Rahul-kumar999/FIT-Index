import 'dart:async';

import 'package:fit_pro/main.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xfff093fb), Color(0xfff5576c)])
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FIT INDEX', style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700, color: Colors.white),),
              SizedBox(height: 201,),
              Center(child: Text('An Easy To Use BMI Calculator', style: TextStyle(fontSize: 25, color: Colors.white),)),

            ],



          ),
        ),
      ),
    );
  }
}