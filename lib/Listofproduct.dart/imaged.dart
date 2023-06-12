import 'package:flutter/material.dart';

class imaged extends StatefulWidget {
  final String productname;
  dynamic productimage;
  String productrate;

  imaged({
    required this.productrate,
    required this.productname,
    required this.productimage,
  }) {}

  @override
  State<imaged> createState() => _imagedState();
}

class _imagedState extends State<imaged> {
  bool _toggle = true;

  var a = SizedBox(
    height: 13,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey),
                    color: Color.fromARGB(255, 255, 255, 255)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(21),
                  child: Image(
                    height: 30,
                    width: 30,
                    image: NetworkImage(
                      widget.productimage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 190,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.productname,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("1 piece"),
                            a,
                            Text(
                              widget.productrate,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            a,
                            Text(
                              "in Stock",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 255, 8)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 30),
                  child: Container(
                    height: 117,
                    width: 60,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () => print("back"),
                            icon: Icon(Icons.more_vert)),
                        SizedBox(
                          height: 20,
                        ),
                        IconButton(
                            onPressed: () => setState(() {
                                  _toggle = !_toggle;
                                }),
                            icon: _toggle
                                ? Icon(
                                    Icons.toggle_on_sharp,
                                    color: Colors.blue,
                                    size: 40,
                                  )
                                : Icon(
                                    Icons.toggle_off,
                                    size: 40,
                                  )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              width: double.infinity,
              child: OutlinedButton.icon(
                  onPressed: () => print("amaem"),
                  icon: Icon(Icons.share),
                  label: Text("Share")),
            ),
          )
        ],
      ),
    );
  }
}
