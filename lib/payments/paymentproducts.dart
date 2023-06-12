import 'package:flutter/material.dart';

class Paymentproducts extends StatefulWidget {
  const Paymentproducts({super.key});

  @override
  State<Paymentproducts> createState() => _PaymentproductsState();
}

class _PaymentproductsState extends State<Paymentproducts> {
  bool _arg = false;
  bool _barg = false;
  bool _carg = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              buttuns();
            },
            child: Text("On hold"),
            style: ElevatedButton.styleFrom(
                backgroundColor: _arg ? Colors.blue : Colors.grey,
                shape: StadiumBorder()),
          ),
          ElevatedButton(
            onPressed: () => buttuns(),
            child: Text("pay outs(15)"),
            style: ElevatedButton.styleFrom(
                backgroundColor: _barg
                    ? Color.fromARGB(255, 25, 25, 187)
                    : Color.fromARGB(255, 102, 109, 110),
                shape: StadiumBorder()),
          ),
          ElevatedButton(
            onPressed: () => buttuns(),
            child: Text("Refunds"),
            style: ElevatedButton.styleFrom(
                backgroundColor: _carg
                    ? Color.fromARGB(255, 154, 159, 162)
                    : Color.fromARGB(255, 0, 213, 255),
                shape: StadiumBorder()),
          ),
        ],
      ),
    );
  }

  void buttuns() {
    setState(() {
      _arg = !_arg;

      _barg = !_barg;
      _carg = !_carg;
    });
  }
}
