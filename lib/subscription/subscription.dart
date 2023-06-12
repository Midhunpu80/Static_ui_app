import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:m_kart/Listofproduct.dart/imaged.dart';

class Subscription extends StatelessWidget {
  var _b = SizedBox(
    height: 15,
  );
  var _style = Text(
    "",
    style: TextStyle(fontWeight: FontWeight.bold),
  );

  List _featuresname = [
    "Custom Domain Name",
    "Verified Seller Badge",
    "Dukkan for Pc",
    "Priority Support",
  ];
  dynamic _featureswsubname = [
    "Get your own Custom  Domain Build\n Your Brand On The Internet",
    "Get Green Verified Badge Under\n Your Store  Name  Build your Trust",
    "Acess All The Exclusive Premium\n feature on Dukhan for Pc",
    "Get Your question Resolved With\n Our Priority Customer Support",
  ];

  var _Iconsdata3 = [
    Icon(
      Icons.language,
      color: Colors.blue,
    ),
    Icon(
      Icons.verified_outlined,
      color: Colors.blue,
    ),
    Icon(
      Icons.laptop_chromebook_outlined,
      color: Colors.blue,
    ),
    Icon(
      Icons.headset_mic_rounded,
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dukan Premium"),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        height: 900,
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 150,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 10,
                    left: 13,
                    child: Card(
                      child: Container(
                          height: 220,
                          width: 360,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(
                            children: [
                              _b,
                              Container(
                                color: Color.fromARGB(255, 255, 255, 255),
                                height: 60,
                                width: 200,
                                child: const Image(
                                  image: AssetImage("images/duk.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Text(
                                  "PREMIUM",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 204, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              _b,
                              const Text(
                                "Get Dukan Premium For Just",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              _b,
                              const Text(
                                "₹4999/year",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              _b,
                              const Text(
                                  "All the Advanced Features For Scailing Your\n Buisness")
                            ],
                          )),
                    ),
                  ),
                  const Positioned(
                      top: 250,
                      left: 12,
                      child: Text(
                        "Features",
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 330,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) => Container(
                      height: 80,
                      child: ListTile(
                        title: Text(
                          _featuresname[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(_featureswsubname[index]),
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.circular(100)),
                          child: _Iconsdata3[index],
                        ),
                      )))),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: Text(
                        "What is Dukan Premium ?",
                        style: TextStyle(fontSize: 16),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Image(
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-photo/grow-your-business-text-message-260nw-1943381773.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
