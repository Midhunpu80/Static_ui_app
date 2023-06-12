import 'package:flutter/material.dart';
import 'package:m_kart/settings/setting.dart';

class setting1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          child: Expanded(
            child: ListView(
              children: [
                settings(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
