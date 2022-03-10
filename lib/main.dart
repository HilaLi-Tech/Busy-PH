// @dart=2.9
//TODO: fix filter functionality
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/loading.dart';
import 'pages/shop_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => BusyPH(),
      '/shop': (context) => Shop()
    }));
}





