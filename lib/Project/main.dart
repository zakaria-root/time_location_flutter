import 'package:flutter/material.dart';
import 'package:untitled/Project/Pages/Home.dart';
import 'package:untitled/Project/Pages/Loading.dart';
import 'package:untitled/Project/Pages/Location.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => Loacation(),
    },
  ));
}
