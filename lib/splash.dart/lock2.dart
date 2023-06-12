import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lock2 extends StatelessWidget {
  const Lock2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 100,
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/packages/lf20_bgHQHE.json",
                  fit: BoxFit.cover),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 100,
              width: 150,
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/private_files/lf30_xRDQab.json",
                  fit: BoxFit.cover),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
            )
          ],
        ),
      ),
    );
  }
}
