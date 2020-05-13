import 'package:flutter/material.dart';
import 'package:fluff/screens/home.dart';
import 'package:fluff/screens/choose_location.dart';
import 'package:fluff/screens/loading.dart';
void main() => runApp(
  MaterialApp(
    theme: ThemeData(),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => loading(),
      '/home': (context) => HomeScreen(),
      '/location': (context) => ChooseLocation(),
    },
  )
);

