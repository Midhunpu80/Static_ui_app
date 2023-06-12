import 'package:flutter/material.dart';
import 'package:m_kart/payments/designpayment.dart';
import 'package:m_kart/payments/paymentproducts.dart';
import 'package:m_kart/payments/pproductlist.dart';
import 'package:m_kart/payments/reapayment.dart';

class Payments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => print("name"), icon: Icon(Icons.priority_high))
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(children: [
                repay(),
                epay(),
                zepay(),
                Paymentproducts(),
                PproductList()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
