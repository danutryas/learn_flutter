import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // will create 3 layer of apps (1. Background, 2. Text, 3. Button)
    return Stack(
      children: <Widget>[
        // First Layer => Background
        Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ))
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ))
                  ],
                )),
          ],
        ),
        // Layer ke-2 => Text
        // ketika text discroll, background tidak akan bergerak
        ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const Text(
                    "INI ADALAH TEXT SEBAGAI LAYER KE-2",
                    style: TextStyle(fontSize: 28),
                  ),
                )
              ],
            )
          ],
        ),
        Align(
          alignment: const Alignment(0, 0.95),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            child: const Text(
              "Ini adalah Floating Button",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
