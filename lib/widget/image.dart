// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          // Image(image: NetworkImage("https://images.unsplash.com/photo-1669394146376-4d59b2d016d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80")),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                child: Image(image: AssetImage("assets/images/laptop.png")),
              )),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                child: Image.asset("assets/images/laptop.png"),
              )),
          // Image.network("https://images.unsplash.com/photo-1669394146376-4d59b2d016d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80")
        ],
      ),
    );
  }
}
