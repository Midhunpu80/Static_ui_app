import 'package:flutter/material.dart';
import 'package:m_kart/orderproductsall/pro1.dart';
import 'package:m_kart/orderproductsall/pro2.dart';
import 'package:m_kart/orderproductsall/pro3.dart';

class Prohome extends StatelessWidget {
  const Prohome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("order#16815"),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 3, right: 3),
          child: Card(
            child: Container(
              child: ListView(
                children: [
                  Column(
                    children: [
                      proall(
                          pro_textcolor: Colors.black,
                          pro_allname: "May 31,05:42 PM",
                          pro_allicon: Icons.circle,
                          pro_icontext: "Deliverd"),
                      Divider(thickness: 2),
                      proall(
                          pro_textcolor: Colors.grey,
                          pro_allname: "1 ITEM",
                          pro_allicon: Icons.format_align_justify_outlined,
                          pro_icontext: "RECIPT"),
                      get_all_stack(),
                      Divider(
                        thickness: 1,
                      ),
                      proall_2(
                          pro_2icontext: "₹799",
                          pro_2textcolor: Color.fromARGB(255, 0, 0, 0),
                          pro_all2name: "Item Total",
                          pro2_textcolor: Colors.black,
                          pro2_size: 17,
                          pro22fontasize: 18),
                      proall_2(
                          pro_2icontext: "FREE",
                          pro_2textcolor: Color.fromARGB(255, 78, 66, 66),
                          pro_all2name: "Delivery",
                          pro2_textcolor: Color.fromARGB(255, 34, 255, 0),
                          pro2_size: 17,
                          pro22fontasize: 18),
                      proall_2(
                        pro_2icontext: "₹799",
                        pro_2textcolor: Color.fromARGB(255, 0, 0, 0),
                        pro_all2name: "Grand Total",
                        pro2_textcolor: Colors.black,
                        pro2_size: 18,
                        pro22fontasize: 20,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      proall_3(
                          pro_all3name: "CUSTOMER DETAILS",
                          pro_3icontext: "SHARE",
                          pro_3textcolor: Color.fromARGB(255, 120, 124, 128),
                          pro3_textcolor: Color.fromARGB(255, 78, 143, 255),
                          pro33fontasize: 16,
                          pro3_size: 17),
                      newlist_tile(
                          a1: "Deepa",
                          a3: Colors.blue,
                          a2: "+91-782900484",
                          a4: Colors.green),
                      newlist_tile(
                          a1: "Address",
                          a3: Color.fromARGB(255, 255, 255, 255),
                          a2: "D 1101 Charectered Breverly \nHills ,Subbramanya P.O",
                          a4: Color.fromARGB(255, 255, 255, 255)),
                      pinrow(
                          b2: "Pincode",
                          b1: "City",
                          b3: 18,
                          b4: FontWeight.bold),
                      pinrow(
                          b2: "56061", b1: "Bang", b3: 16, b4: FontWeight.w400)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
