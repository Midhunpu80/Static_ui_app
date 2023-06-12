import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_kart/camera/gallary.dart';

var _axe = SizedBox(
  height: 10,
);

proall(
    {var pro_allname, var pro_allicon, var pro_icontext, var pro_textcolor}) {
  return Container(
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          pro_allname,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: pro_textcolor),
        ),
        TextButton.icon(
            onPressed: () => print("ma "),
            icon: Icon(pro_allicon),
            label: Text(
              pro_icontext,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ))
      ],
    ),
  );
}

Container get_all_stack() {
  return Container(
    height: 150,
    width: double.infinity,
    color: Color.fromARGB(255, 255, 255, 255),
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            height: 90,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjB0JTIwc2hpcnR8ZW58MHx8MHx8&w=1000&q=80"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 100,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore|Men|Navy Blue",
                  style: TextStyle(fontSize: 18),
                ),
                _axe,
                Text("1 pieces"),
                _axe,
                Text(
                  "Size XL",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 330,
          top: 105,
          child: Text(
            "₹799",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: 100,
          top: 90,
          child: Row(
            children: [
              Container(
                height: 33,
                width: 35,
                child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(106, 71, 237, 255),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(241, 0, 110, 255))),
              ),
              TextButton(
                  onPressed: () => print("anme"),
                  child: Text(
                    "X  ₹799",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ],
          ),
        )
      ],
    ),
  );
}
