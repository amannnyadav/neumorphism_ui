import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: darkMode ? Colors.grey[850] : Colors.grey.shade200,
                boxShadow: [
                  BoxShadow(
                      color: darkMode
                          ? Colors.grey.shade900
                          : Colors.grey.shade400,
                      blurRadius: 15,
                      offset: const Offset(4.0, 4.0),
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: darkMode ? Colors.grey.shade800 : Colors.white,
                      blurRadius: 15,
                      offset: const Offset(-4.0, -4.0),
                      spreadRadius: 1.0),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.accessibility_new, size: 75),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(LinearBorder.none)
                    ),
                      onPressed: () {
                        setState(() {
                          darkMode = false;
                        });
                      },
                      child: const Text("Light",style: TextStyle(color: Colors.black))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(LinearBorder.none),
                        backgroundColor: MaterialStateProperty.all(Colors.black)),
                      onPressed: () {
                        setState(() {
                          darkMode = true;
                        });
                      },
                      child: const Text("Dark",style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
