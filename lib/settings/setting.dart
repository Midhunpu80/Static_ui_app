import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class settings extends StatefulWidget {
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool val = true;

  List _title = [
    "Share Dukan App",
    "Change Langauge",
    "Whatsapp Chat Support",
    "Privacy Policy",
    "Rate Us ",
    "Sign Out"
  ];

  final IconData = [
    Icon(Icons.share),
    Icon(Icons.language),
    Icon(Icons.whatsapp),
    Icon(Icons.lock),
    Icon(Icons.star_border),
    Icon(Icons.logout)
  ];

  final icondata2 = [
    Icon(Icons.arrow_forward_ios_outlined),
    Icon(Icons.arrow_forward_ios),
    Icon(
      Icons.toggle_on,
      color: Colors.blue,
      size: 50,
    ),
    Icon(
      Icons.arrow_forward_ios_outlined,
      color: Colors.white,
    ),
    Icon(
      Icons.arrow_back_ios_new,
      color: Colors.white,
    ),
    Icon(
      Icons.toggle_on,
      color: Colors.white,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Additional Informations"),
          centerTitle: true,
        ),
        body: Card(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 254, 255, 255),
                  child: ListView.separated(
                      itemBuilder: ((context, index) {
                        final _data = _title[index];
                        return ListTile(
                          title: Text(_data),
                          subtitle: Text("home"),
                          leading: IconButton(
                              onPressed: () => print("like"),
                              icon: IconData[index]),
                          trailing: IconButton(
                              onPressed: () => print("name"),
                              icon: icondata2[index]),
                        );
                      }),
                      separatorBuilder: ((context, index) {
                        return Container();
                      }),
                      itemCount: _title.length),
                ),
              ),
              Text(
                "Version",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text("2.4.2"),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
