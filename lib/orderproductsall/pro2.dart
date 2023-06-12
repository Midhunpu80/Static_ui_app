import 'package:flutter/material.dart';

proall_2(
    {required var pro_all2name,
    required var pro_2icontext,
    required var pro_2textcolor,
    required var pro2_textcolor,
    required double? pro22fontasize,
    required double? pro2_size}) {
  return Container(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          pro_all2name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: pro22fontasize,
            color: pro_2textcolor,
          ),
        ),
        Text(
          pro_2icontext,
          style: TextStyle(color: pro2_textcolor, fontSize: pro2_size),
        )
      ],
    ),
  );
}

////////////////////////////////////
proall_3(
    {required var pro_all3name,
    required var pro_3icontext,
    required var pro_3textcolor,
    required var pro3_textcolor,
    required double? pro33fontasize,
    required double? pro3_size}) {
  return Container(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          pro_all3name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: pro33fontasize,
            color: pro_3textcolor,
          ),
        ),
        TextButton.icon(
            onPressed: (() => print("name")),
            icon: Icon(Icons.share),
            label: Text(
              pro_3icontext,
              style: TextStyle(color: pro3_textcolor, fontSize: pro3_size),
            ))
      ],
    ),
  );
}
