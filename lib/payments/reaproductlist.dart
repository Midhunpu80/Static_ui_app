import 'package:flutter/material.dart';

class reaprolist extends StatelessWidget {
  var netimag;
  var retitile;
  var retsub;
  var recode;
  var retprize;

  reaprolist(
      {required this.netimag,
      required this.recode,
      required this.retitile,
      required this.retsub,
      required this.retprize});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Card(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Stack(
                children: [
                  /////////////////////////////////////////////////////
                  Positioned(
                    top: 15,
                    left: 6,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 130, 102, 102)),
                          borderRadius: BorderRadius.circular(17),
                          color: Color.fromARGB(255, 198, 173, 173)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image(
                          image: NetworkImage(netimag),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ///////////////////////////////
                  Positioned(
                    left: 90,
                    top: 20,
                    child: Column(
                      children: [
                        Text(
                          retitile,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(retsub)
                      ],
                    ),
                  ),
                  //////////////////////////////////
                  Positioned(
                      top: 110,
                      child: Text(
                        recode,
                        style: TextStyle(
                            color: Colors.grey, fontStyle: FontStyle.italic),
                      )),
                  //////////////////////////////////
                  Positioned(
                    left: 260,
                    top: 30,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text(
                              retprize,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                        TextButton.icon(
                            onPressed: () => print("age"),
                            icon: Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 0, 255, 8),
                            ),
                            label: Text(
                              "Successful",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 77, 73, 73)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
