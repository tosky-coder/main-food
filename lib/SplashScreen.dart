import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mainfoodapp/GetStartedPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    Timer(Duration(seconds:4), () {
       var route = MaterialPageRoute(builder: (context) => GetStarted());
                    Navigator.push(context, route);
    });
    // TODO: implement initState  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4E342E), Color(0xFF3E2723)]),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/fdl1.jpg",
            height: 450,
            width: 450,
            ),
            Text("FOOD FOX",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            
            )
          ],
        ),
      ),
      
    );
  }
}