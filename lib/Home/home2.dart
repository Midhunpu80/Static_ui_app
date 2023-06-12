import 'package:flutter/material.dart';
import 'package:m_kart/Home/Home1.dart';
import 'package:m_kart/Home/reacontainerhome.dart';
import 'package:m_kart/camera/gallary.dart';

class Home2 extends StatelessWidget {
  Column _get() {
    return Column(children: [
      Row(
        children: [reacontainer1(), reacontainer1()],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            backgroundColor: Colors.white,
            body: Container(
                child: ListView(
              children: [
                Column(children: [_get(), _get(), _get(), _get()])
              ],
            ))));
  }
}
