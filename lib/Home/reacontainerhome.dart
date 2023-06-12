import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

Container reacontainer1({var colorred}) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 5),
    height: 150,
    width: 180,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.red),
    child: Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorred,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
