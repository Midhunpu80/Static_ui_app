import 'package:flutter/material.dart';

import 'package:m_kart/Home/Home.dart';
import 'package:m_kart/Home/Home1.dart';
import 'package:m_kart/Home/home2.dart';
import 'package:m_kart/Home2/Hom1.dart';
import 'package:m_kart/camer2.dart/screengallary.dart';
import 'package:m_kart/camera/camera.dart';
import 'package:m_kart/camera/gallary.dart';
import 'package:m_kart/orderproductsall/prohome.dart';
import 'package:m_kart/payments/pproductlist.dart';
import 'package:m_kart/payments/reaproductlist.dart';

import 'package:m_kart/splash.dart/lock.dart';
import 'package:m_kart/splash.dart/splash.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Hom1(),
    );
  }
}
