import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  String username;
  String usersub;
  dynamic icon1;
  dynamic icon2;
  UserDetails(
      {required this.username, this.icon1, this.icon2, required this.usersub});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            ListTile(
              title: Text(
                username,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                usersub,
                style: TextStyle(fontSize: 16),
              ),
              trailing: FittedBox(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => print("name"),
                        icon: Icon(
                          icon1,
                          color: Color.fromARGB(255, 0, 140, 255),
                        )),
                    IconButton(
                        onPressed: () => print("name"),
                        icon: Icon(
                          icon2,
                          color: Color.fromARGB(255, 4, 255, 0),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*class doublelist extends StatelessWidget {
  const doublelist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: 100,
      child: Row(
        children: [
          ListTile(),
          ListTile(
            title: Text("mname"),
          )
        ],
      ),
    );
  }
}*/
