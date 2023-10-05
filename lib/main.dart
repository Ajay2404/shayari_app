import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'first/firstpage.dart';

void main() {
  ErrorWidget.builder = (details) {
    return Material(
        child: Container(
            margin: EdgeInsets.all(03),
            height: 450,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),
              ),
            )));
  };
  runApp(MaterialApp(
    home: firstpage(),
    debugShowCheckedModeBanner: false,
  ));
}
