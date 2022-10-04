import 'package:flutter/material.dart';
import 'package:mainfoodapp/SplashScreen.dart';
import 'GetStartedPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mainfood App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class mainfoodapp extends StatefulWidget {
  const mainfoodapp({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _mainfoodappState();
}

class _mainfoodappState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}