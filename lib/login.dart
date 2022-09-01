// ignore_for_file: import_of_legacy_library_into_null_safe, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_constructors, camel_case_types, duplicate_ignore

import "package:flutter/material.dart";
import "package:carousel_pro/carousel_pro.dart";
import 'package:untitled8/main.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'F Track',
    home: login(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'F Track',
      home: HomePage(),
    );
  }
}

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('F Track'),
          actions: [
            // IconButton(
            //   icon: Icon(Icons.search),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 142, 223, 246),
        body: SingleChildScrollView(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: SizedBox(
                  height: 600,
                  width: 700,
                  child: Carousel(
                    images: const [
                      AssetImage(
                          "assets/0001044-construction-crane-Logo-Maker-03.png"),
                      AssetImage("assets/image2.jpg"),
                      AssetImage("assets/image02.png"),
                    ],
                  )),
            ),
            Column(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: []),
                      border: Border(left: BorderSide(width: 2)),
                    ),
                    child: const Text("LOGIN",
                        style: TextStyle(
                          fontSize: 40,
                          // fontWeight: FontWeight.bold,
                        ))),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: 300),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          labelText: 'User Id',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(width: 300),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide()),
                              prefixIcon: Icon(
                                Icons.lock_open,
                              ),
                              labelText: 'PASSWORD',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ))),
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Forget password?'))),
                Center(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => MyApp()));
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueGrey,
                        ),
                        child: const Text('Login ',
                            style: TextStyle(fontSize: 20)))),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Create Account',
                                style: TextStyle(
                                  color: Colors.black,
                                ))),
                      ],
                    ))
              ],
            )
          ],
        )));
  }
}
