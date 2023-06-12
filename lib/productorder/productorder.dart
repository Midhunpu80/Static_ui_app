import 'package:flutter/material.dart';
import 'package:m_kart/productorder/prodesign.dart';
import 'package:m_kart/productorder/prorea.dart';
import 'package:m_kart/productorder/userdetails.dart';

class ProductOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order#168006"),
      ),
      body: Container(
        child: Container(
          child: ListView(
            children: [
              proRea(
                width1: 100,
                height1: 70,
                color1: Color.fromARGB(255, 255, 255, 255),
                protext: 'May 31,05:42 PM',
                Icondat9: Icons.circle_rounded,
                protext2: 'Deliverd',
                color2: Color.fromARGB(255, 0, 140, 255),
              ),
              Divider(),
              proRea(
                width1: 100,
                height1: 60,
                color1: Color.fromARGB(255, 255, 255, 255),
                protext: '1ITEM',
                Icondat9: Icons.receipt_outlined,
                protext2: 'Receipt',
                color2: Color.fromARGB(255, 0, 140, 255),
              ),
              Prodesign(),
              proRea(
                width1: 100,
                height1: 50,
                color1: Color.fromARGB(255, 255, 255, 255),
                protext: "Iten Total",
                protext2: '₹799',
                color2: Color.fromARGB(255, 0, 0, 0),
              ),
              proRea(
                width1: 100,
                height1: 50,
                color1: Color.fromARGB(255, 255, 255, 255),
                protext: "Delivery",
                protext2: 'FREE',
                color2: Color.fromARGB(255, 21, 255, 0),
              ),
              proRea(
                width1: 100,
                height1: 50,
                color1: Color.fromARGB(255, 255, 255, 255),
                protext: "Grand Total",
                protext2: '₹799',
                color2: Color.fromARGB(255, 0, 0, 0),
              ),
              Divider(),
              proRea(
                Icondat9: Icons.share,
                width1: 100,
                height1: 100,
                color1: Color.fromARGB(255, 255, 255, 255),
                protext: "Customer Details",
                protext2: 'SHARE',
                color2: Color.fromARGB(255, 0, 179, 255),
              ),
              UserDetails(
                username: 'Midhunpu',
                usersub: "+91-9061603159",
                icon1: Icons.call,
                icon2: Icons.whatsapp_rounded,
              ),
              UserDetails(
                username: 'Address',
                usersub:
                    "payyappily (H) velappaya ,\np.o mediacal college 680596",

                /// icon1: Icons.call,
                //  icon2: Icons.whatsapp_rounded,
              ),
              //  doublelist()
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                height: 100,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("City",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text("Thrissur")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Pincode",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("680596")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
