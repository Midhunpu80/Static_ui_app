import 'dart:io';
import 'package:flutter/material.dart';
import 'package:m_kart/camer2.dart/screengallary.dart';
import 'galleryscreen.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, this.image});
  final dynamic image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: db,
        builder: (context, List data, _) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
              ],
              title: const Text('Image'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Image.file(
                  File(
                    image,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
