import 'package:flutter/material.dart';
import 'package:m_kart/payments/paymentwidget.dart';

class zepay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            margin: EdgeInsets.only(
              left: 5,
            ),
            height: 220,
            width: 500,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Stack(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: TextButton(
                                onPressed: () => print("allow"),
                                child: const Text(
                                  "Preview Overrivew",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                )),
                          ),
                          Container(
                            height: 120,
                            width: 177,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                paymentwidget(
                                    paywidtext: "AMOUNT ON HOLD",
                                    paywidtext2: "₹0")
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(top: 20, right: 50),
                                child: const Positioned(
                                  left: 150,
                                  child: Text(
                                    "Transactions ",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(children: [
                          Positioned(
                            left: 30,
                            child: TextButton.icon(
                                onPressed: () => print("name"),
                                icon: const Text(
                                  "Life Time",
                                  style: TextStyle(color: Colors.black),
                                ),
                                label: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.black,
                                  size: 15,
                                )),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 167,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 255, 8),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    paymentwidget(
                                      paywidtext: 'AMOUNT RECIVED',
                                      paywidtext2: '₹13,332',
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ]),
              ],
            )));
  }
}
