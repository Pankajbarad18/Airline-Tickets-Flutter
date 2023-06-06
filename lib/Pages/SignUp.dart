// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 73, 164, 238),
            Color.fromARGB(255, 226, 216, 216),
            Color.fromARGB(255, 184, 160, 226)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin:
                const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Icon(
                    Icons.sailing,
                    size: 200,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Hello Great Choice",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //Email
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Colors.deepPurple, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(color: Colors.white70, width: 2.0))),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  //username feild
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "UserName",
                        hintStyle: TextStyle(fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Colors.deepPurple, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(color: Colors.white70, width: 2.0))),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  //password feild
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Colors.deepPurple, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                                BorderSide(color: Colors.white70, width: 2.0))),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  //Login Button
                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepPurple[500])),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
