// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 73, 164, 238),
              Color.fromARGB(255, 226, 216, 216),
              Color.fromARGB(255, 184, 160, 226)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(
                  top: 50, bottom: 50, left: 20, right: 20),
              child: Column(children: [
                const SizedBox(
                  height: 70,
                ),
                //-----------     Logo   --------------------//
                const Icon(
                  Icons.abc,
                  size: 200,
                ),
                const Text(
                  "Welcome To",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                //-----------     Login Button   --------------------//

                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black12),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(231, 255, 255, 255)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //-----------     SignUp Button   --------------------//

                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.only(top: 10, bottom: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignUp');
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 136, 102, 199)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                //-------------   Guest -----------------------//
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: const Text(
                    "Countinue as a guest",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.deepPurple,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            )),
      ),
    );
  }
}
