import 'package:flutter/material.dart';

class STACK extends StatelessWidget {
  dynamic newicons;
  dynamic newcolor;
  final String newtext;
  final newnewcolor;
  String passnavtext;
  dynamic navigate;

  STACK(
      {super.key,
      required this.navigate,
      required this.newcolor,
      required this.newicons,
      this.newnewcolor,
      required this.newtext,
      required this.passnavtext}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 140,
              width: 180,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: newcolor),
                child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => navigate)),
                    icon: Icon(
                      newicons,
                      size: 22,
                      color: Colors.white,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: newnewcolor),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    newtext,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 80,
                left: 10,
                child: Text(
                  passnavtext,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
