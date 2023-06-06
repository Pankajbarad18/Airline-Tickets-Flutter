// ignore_for_file: file_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String uname = "";
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
                    Icons.lock,
                    size: 200,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome Back ${uname}",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //username feild
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        uname = value;
                      });
                    },
                    decoration: const InputDecoration(
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
                            Navigator.pushNamed(context, '/Home');
                          },
                          child: const Text(
                            "Login",
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
