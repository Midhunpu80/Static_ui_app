import 'package:flutter/material.dart';
import 'package:m_kart/Home/reacontainerhome.dart';
import 'package:m_kart/camera/gallary.dart';
import 'package:m_kart/payments/reapayment.dart';

class home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(5),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                reacontainer1(colorred: Color.fromARGB(255, 0, 0, 0)),
                reacontainer1(colorred: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
