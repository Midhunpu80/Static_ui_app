import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:m_kart/Home/Home1.dart';
import 'package:m_kart/Listofproduct.dart/tab.dart';
import 'package:m_kart/camer2.dart/screengallary.dart';
import 'package:m_kart/camera/camera.dart';
import 'package:m_kart/camera/gallary.dart';
import 'package:m_kart/orderproductsall/prohome.dart';
import 'package:m_kart/payments/payment.dart';
import 'package:m_kart/productorder/productorder.dart';
import 'package:m_kart/settings/setting.dart';
import 'package:m_kart/settings/setting1.dart';
import 'package:m_kart/subscription/subscription.dart';

class Hom1 extends StatelessWidget {
  _get({
    required BuildContext context,
    required dynamic ion,
    required Color colorn,
    required String texto,
    required dynamic navig,
    required String bartext,
    required Color barcolor,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 110,
      width: 176,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 14),
            child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: barcolor),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        bartext,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 12),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: colorn),
                  child: IconButton(
                      onPressed: () => Navigator.of(
                            context,
                          ).push(
                              MaterialPageRoute(builder: ((context) => navig))),
                      icon: Icon(ion)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    texto,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 221, 221),
        appBar: AppBar(
          title: Text(("Manage Store")),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => settings()));
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  _get(
                      navig: Prohome(),
                      ion: Icons.volume_down,
                      colorn: const Color.fromARGB(255, 255, 145, 0),
                      texto: "MARKETING \nDESIGN",
                      context: context,
                      barcolor: Colors.white,
                      bartext: 'null'),
                  _get(
                      context: context,
                      barcolor: Colors.white,
                      bartext: 'null',
                      navig: Payments(),
                      ion: Icons.currency_rupee,
                      colorn: Color.fromARGB(255, 0, 255, 8),
                      texto: "Online \nPayments")
                ],
              ),
              Row(
                children: [
                  _get(
                      barcolor: Colors.white,
                      bartext: 'null',
                      context: context,
                      navig: Subscription(),
                      ion: Icons.discount,
                      colorn: Color.fromARGB(255, 253, 234, 63),
                      texto: "Discount\n Coupons"),
                  _get(
                      barcolor: Colors.white,
                      bartext: 'null',
                      context: context,
                      navig: tabbview(),
                      ion: Icons.group,
                      colorn: Color.fromARGB(255, 44, 190, 129),
                      texto: "My \nCustomers")
                ],
              ),
              Row(
                children: [
                  _get(
                      barcolor: Colors.white,
                      bartext: 'null',
                      context: context,
                      navig: ScreenGallery(),
                      ion: Icons.qr_code_sharp,
                      colorn: Color.fromARGB(255, 160, 157, 153),
                      texto: "Store QR \nCode"),
                  _get(
                      barcolor: Colors.white,
                      bartext: 'null',
                      context: context,
                      navig: home1(),
                      ion: Icons.money,
                      colorn: Colors.purple,
                      texto: "Extra\n Charges ")
                ],
              ),
              Row(
                children: [
                  _get(
                      barcolor: Color.fromARGB(255, 53, 244, 0),
                      bartext: 'NEW',
                      context: context,
                      navig: home1(),
                      ion: Icons.format_align_justify_outlined,
                      colorn: Color.fromARGB(255, 255, 64, 230),
                      texto: "Order\n Form")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
