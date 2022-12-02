// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/image.dart';
import 'package:learn_flutter/widget/layout.dart';
import 'package:learn_flutter/widget/text.dart';
import 'package:learn_flutter/widget/icon.dart';
import 'package:learn_flutter/widget/button.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter/widget/animatedcontainer.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Widget> widgets = [
    Container(
      color: Colors.grey[400],
      margin: EdgeInsets.symmetric(vertical: 20),
      child: MyText(),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[400],
      child: MyImage(),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[400],
      child: MyIcon(),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[400],
      child: MyButton(),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[400],
      child: MyLayout(),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[400],
      child: MyAnimatedContainer(),
    ),
  ];

  _MyListViewState() {
    widgets.add(ElevatedButton(
        onPressed: () => {context.go('/flex')},
        child: Text("View Flexible Layout")));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        // alignment: Alignment.center,
        child: ListView(
          children: widgets,
        ));
  }
}
