import 'package:flutter/material.dart';
import 'package:m_kart/Listofproduct.dart/categories.dart';
import 'package:m_kart/Listofproduct.dart/products.dart';

class tabbview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ))
            ],
            title: Text("Catologue"),
            bottom: TabBar(tabs: [
              Text(
                "Products ",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Categories",
                style: TextStyle(fontSize: 20),
              ),
            ]),
          ),
          body: TabBarView(children: [products(), category()])),
    );
  }
}
