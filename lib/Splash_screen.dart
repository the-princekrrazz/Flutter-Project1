import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpref/main.dart';

class Splash_screen extends StatefulWidget{
  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>MyHomePage(title: "Login")));
    });
  }
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Text("Chat App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Arial'),)
        ),
      ),
    )
    );
  }
}