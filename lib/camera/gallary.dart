import 'dart:io';

import 'package:flutter/material.dart';
import 'package:m_kart/Listofproduct.dart/imaged.dart';
import 'package:m_kart/camera/camera.dart';

class gallary extends StatelessWidget {
  dynamic imximag;
  gallary({this.imximag}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Camera())),
        ),
        appBar: AppBar(
          title: Text("gallary"),
          centerTitle: true,
        ),
        body: Container(
            child: GridView.builder(
                itemCount: 0,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemBuilder: (context, index) {
                  // ignore: unused_local_variable

                  return Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.red,
                    height: 200,
                    width: 100,
                    child: Image(
                      image: NetworkImage(
                          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hp.com%2Fin-en%2Fhome.html&psig=AOvVaw24dKm63fiWtEMcct_fcSVv&ust=1677659385468000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiOlK_mt_0CFQAAAAAdAAAAABAD"),
                      fit: BoxFit.cover,
                    ),
                  );
                })));
  }
}

class widget extends StatelessWidget {
  const widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      width: 100,
      color: const Color.fromARGB(255, 0, 255, 8),
    );
  }
}
