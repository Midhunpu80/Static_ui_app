import 'package:flutter/material.dart';

class proRea extends StatelessWidget {
  double height1;
  double width1;
  Color color1;
  // ignore: non_constant_identifier_names
  dynamic Icondat9;

  final String protext;
  final String protext2;
  Color color2;
  proRea({
    required this.color2,
    required this.protext2,
    this.Icondat9,
    required this.width1,
    required this.height1,
    required this.color1,
    required this.protext,
  }) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: height1,
      width: width1,
      color: color1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          protext,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton.icon(
            onPressed: () => print("May 31,05:42 PM"),
            icon: Icon(
              Icondat9,
              color: color2,
            ),
            label: Text(
              protext2,
              style: TextStyle(color: color2),
            )),
      ]),
    );
  }
}
