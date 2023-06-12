import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:m_kart/splash.dart/lock.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checksplash();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Container(
            height: 500,
            width: double.infinity,
            color: Color.fromARGB(255, 0, 0, 0),
            child: Lottie.network(
                "https://assets5.lottiefiles.com/packages/lf20_zuiyqs2p.json"),
          ),
        ),
      ),
    );
  }

  _checksplash() async {
    await Future.delayed(Duration(seconds: 6));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Lock()));
  }
}
