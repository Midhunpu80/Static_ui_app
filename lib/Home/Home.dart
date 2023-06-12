import 'package:flutter/material.dart';
import 'package:m_kart/Home/stack.dart';
import 'package:m_kart/Listofproduct.dart/tab.dart';
import 'package:m_kart/camera/camera.dart';
import 'package:m_kart/payments/designpayment.dart';
import 'package:m_kart/payments/payment.dart';
import 'package:m_kart/productorder/productorder.dart';
import 'package:m_kart/settings/setting.dart';
import 'package:m_kart/settings/setting1.dart';
import 'package:m_kart/subscription/subscription.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mange store"),
          leading: IconButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProductOrder())),
              icon: Icon(Icons.shopping_cart)),
          centerTitle: true,
          actions: [
            // ignore: avoid_print
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => settings())),
                icon: Icon(Icons.settings))
          ],
        ),
        body: Container(
          child: Card(
            child: Container(
              color: Color.fromARGB(255, 218, 212, 212),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  STACK(
                    newcolor: Color.fromARGB(255, 255, 145, 35),
                    newicons: Icons.volume_down_alt,
                    newtext: 'null',
                    passnavtext: 'Marketing\nDesigns',
                    navigate: tabbview(),
                  ),
                  STACK(
                    newcolor: Color.fromARGB(255, 96, 232, 51),
                    newicons: Icons.currency_rupee_sharp,
                    newtext: 'null',
                    passnavtext: 'Online\nPayments',
                    navigate: Payments(),
                  ),
                  STACK(
                    newcolor: Color.fromARGB(255, 229, 135, 42),
                    newicons: Icons.discount,
                    newtext: 'null',
                    passnavtext: 'Discount\nCoupns',
                    navigate: Subscription(),
                  ),
                  STACK(
                    newcolor: Color.fromARGB(255, 68, 133, 255),
                    newicons: Icons.people,
                    newtext: 'null',
                    passnavtext: 'My\nCustomers',
                    navigate: tabbview(),
                  ),
                  STACK(
                    newcolor: Color.fromARGB(255, 83, 86, 90),
                    newicons: Icons.qr_code_scanner_outlined,
                    newtext: 'null',
                    passnavtext: 'Store QR \n Code',
                    navigate: Camera(),
                  ),
                  STACK(
                    newcolor: Color.fromARGB(255, 120, 57, 255),
                    newicons: Icons.looks_two_outlined,
                    newtext: 'null',
                    passnavtext: 'Extra\nCharges',
                    navigate: tabbview(),
                  ),
                  STACK(
                    newcolor: Color.fromARGB(255, 255, 43, 230),
                    newicons: Icons.format_align_justify_outlined,
                    newnewcolor: Color.fromARGB(255, 36, 226, 43),
                    newtext: "NEW",
                    passnavtext: 'Order\nForm',
                    navigate: tabbview(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
