
import 'package:flowersapp/screens/screen1.dart';
import 'package:flowersapp/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flowersapp/screens/Home.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flower App',
      home: Home(),
      routes: {
        'Home' : (context)=>Home(),
        'screen1':(context)=>Screen1(),
        'screen2':(context)=>Screen2()
      },
    )

);




