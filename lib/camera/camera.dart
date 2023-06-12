import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:m_kart/Listofproduct.dart/imaged.dart';
import 'package:m_kart/camera/gallary.dart';

class Camera extends StatefulWidget {
  Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? imagpick;

  _getimage() async {
    final PickedFile? _getimg =
        await ImagePicker().getImage(source: ImageSource.camera);
    if (_getimg != null) {
      setState(() {
        imagpick = File(_getimg.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 89, 0, 255),
        appBar: AppBar(
          title: Text("Camera"),
          centerTitle: true,
        ),
        body: Container(
          child: Container(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 100, top: 150),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        child: imagpick == null
                            ? Container(
                                height: 200,
                                width: 200,
                                child: Image(
                                    image: NetworkImage(
                                        "https://t3.ftcdn.net/jpg/01/18/01/98/360_F_118019822_6CKXP6rXmVhDOzbXZlLqEM2ya4HhYzSV.jpg")),
                              )
                            : Container(
                                height: 200,
                                width: 200,
                                child: Image.file(
                                  imagpick!,
                                  fit: BoxFit.cover,
                                ),
                              ))),
                Padding(
                    padding: EdgeInsets.only(left: 110, top: 20),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _getimage();
                      },
                      icon: Icon(Icons.camera),
                      label: Text("Camera"),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.black),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 110, top: 20),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => gallary(
                                  imximag: File(imagpick!.path),
                                )));
                      },
                      icon: Icon(Icons.check),
                      label: Text("submit"),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.black),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
