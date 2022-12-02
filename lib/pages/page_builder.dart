import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class MyPageBuilder extends StatelessWidget {
  final String textTitle;
  final Widget childWidget;

  const MyPageBuilder(
      {super.key, this.textTitle = "", this.childWidget = const Text('')});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => context.go("/"),
            child: const Icon(Icons.arrow_back),
          ),
          centerTitle: true,
          title: Text(textTitle),
        ),
        body: childWidget,
      ),
    );
  }
}
