import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_kart/camera/gallary.dart';

newlist_tile(
    {required String? a1,
    required String? a2,
    required var a3,
    required var a4}) {
  return Container(
    child: Container(
      height: 80,
      child: ListTile(
        title: Text(
          a1!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          a2!,
          style: TextStyle(fontSize: 17),
        ),
        trailing: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.call,
                color: a3,
                size: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.whatsapp,
                color: a4,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

pinrow(
    {required var b1, required var b2, required double b3, required var b4}) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 10,
        ),
        Text(
          b1,
          style: TextStyle(fontSize: b3, fontWeight: b4),
        ),
        SizedBox(
          height: 30,
          width: 90,
        ),
        Text(
          b2,
          style: TextStyle(fontSize: b3, fontWeight: b4),
        )
      ],
    ),
  );
}
