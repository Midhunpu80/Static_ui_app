import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:m_kart/Home/Home.dart';
import 'package:m_kart/splash.dart/lock2.dart';

class Lock extends StatefulWidget {
  @override
  State<Lock> createState() => _LockState();
}

class _LockState extends State<Lock> {
  var _a = SizedBox(
    height: 20,
  );

  bool _s = true;

  final _username = TextEditingController();

  final _password = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 500,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Lottie.network(
                        "https://assets9.lottiefiles.com/packages/lf20_ucbyrun5.json"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          _a,
                          TextFormField(
                            controller: _username,
                            decoration: const InputDecoration(
                                filled: true,
                                prefix: Icon(Icons.person),
                                hintText: " Please enter  your Username",
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 4,
                                        color: Color.fromARGB(
                                            255, 134, 218, 222)))),
                            validator: ((value) {
                              if (value == null || value.isEmpty) {
                                return "enter username ";
                              } else if (value.length < 6) {
                                return "enter minimum 6 charecters";
                              } else {
                                return null;
                              }
                            }),
                          ),
                          _a,
                          TextFormField(
                            controller: _password,
                            obscureText: _s,
                            decoration: InputDecoration(
                                prefix: const Icon(
                                  Icons.lock,
                                  size: 18,
                                ),
                                suffix: IconButton(
                                    onPressed: () => setState(() {
                                          _s = !_s;
                                        }),
                                    icon: _s
                                        ? const Icon(
                                            Icons.remove_red_eye_rounded,
                                            color: Colors.red,
                                            size: 18,
                                          )
                                        : const Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.grey,
                                            size: 18,
                                          )),
                                hintText: " Please enter  your Password",
                                enabled: true,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 5,
                                        color: Color.fromARGB(
                                            255, 134, 218, 222)))),
                            validator: ((value) {
                              if (value == null || value.isEmpty) {
                                return "enter password ";
                              } else if (value.length < 6) {
                                return "enter minimum 6 charecters";
                              } else {
                                return null;
                              }
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _a,
                  _a,
                  Container(
                    width: 300,
                    height: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 134, 218, 222),
                          shape: StadiumBorder()),
                      onPressed: (() {
                        if (_formkey.currentState!.validate()) {
                          _checklogin(context);
                        } else {
                          return null;
                        }
                      }),
                      child: Text("Login"),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "Signup With",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: [Lock2()],
              ),
              _a,
              _a,
              const Padding(
                  padding: EdgeInsets.only(left: 85),
                  child: Text(
                    "Dont Have an account? SignUp ",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 86, 153, 209)),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _checklogin(BuildContext context) async {
    var _use = _username.text.trim();
    var _pass = _password.text.trim();
    if (_use == "midhunpu80@gmail.com" && _pass == "123456") {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Color.fromARGB(255, 255, 17, 0),
          content: Text("please enter username and password correctly ")));
    }
  }
}
