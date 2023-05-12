

import 'package:cock_application/analod_watches.dart';
import 'package:cock_application/strap_watches.dart';
import 'package:flutter/material.dart';

import 'digital_watches.dart';
import 'home_page.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    title: "Clock App",
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (ctx) => HomePage(),
      'digital' : (ctx) => Digital_watches(),
      'analog' : (ctx) => AnalogWatch(),
      'strap' : (ctx) => Strap_watchs(),
    },
  ));
}