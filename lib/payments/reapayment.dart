import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

var _a = SizedBox(
  height: 20,
);

class repay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Color.fromARGB(255, 0, 0, 0),
        shadowColor: Color.fromARGB(255, 129, 9, 9),
        child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Trasaction Limit",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                    "A free limit up to which you will recive \nthe online payments directly in your bank"),
              ),
              _a,
              Container(
                height: 7,
                margin: EdgeInsets.only(left: 15, right: 20),
                child: LinearProgressIndicator(
                  value: 0.5,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: Text("36,668 left out of ₹50,000")),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: ElevatedButton(
                    onPressed: () => print("name"),
                    child: Text("Increase Limit")),
              ),
            ],
          ),
        ));
  }
}

class epay extends StatelessWidget {
  const epay({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Color.fromARGB(255, 63, 25, 22),
        child: Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            height: 120,
            width: 370,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Default Method",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Payment Profile",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                        onPressed: () => print("mishub"),
                        icon: const Text(
                          "Online  Payment",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        label: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                        )),
                    TextButton.icon(
                        onPressed: () => print("mishub"),
                        icon: Text("Bank Account",
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                        label: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                        )),
                  ],
                )
              ],
            )));
  }
}
