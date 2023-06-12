import 'package:flutter/material.dart';

class Prodesign extends StatelessWidget {
  const Prodesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 100,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              child: Container(
                height: 120,
                width: 110,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: const Image(
                    image: NetworkImage(
                        "https://www.wyo.in/pub/media/mf_webp/jpg/media/catalog/product/cache/718154c3aff62b1ad64160986aa81112/i/n/indian-flag-t-shirt.webp")),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 190,
              width: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Explore |Men |Navy Blue",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const Text("1 Piece"),
                  Text("Size XL"),
                  TextButton.icon(
                      onPressed: () => print("name"),
                      icon: const Icon(
                        Icons.check_box_outline_blank_sharp,
                        color: Colors.blue,
                      ),
                      label: const Text(
                        "x ₹799",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 160,
              width: 100,
              child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "₹799",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
