//TODO: fix filter functionality
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => BusyPH()
    }));
}





