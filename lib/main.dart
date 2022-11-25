import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('my first App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Test wae1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
      ),
    )));
