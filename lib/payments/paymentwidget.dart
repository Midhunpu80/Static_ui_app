import 'dart:ui';

import 'package:flutter/material.dart';

class paymentwidget extends StatelessWidget {
  String paywidtext;
  String paywidtext2;

// ignore: use_key_in_widget_constructors
  paymentwidget({required this.paywidtext, required this.paywidtext2}) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            paywidtext,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(paywidtext2,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ),
          )
        ],
      ),
    );
  }
}
