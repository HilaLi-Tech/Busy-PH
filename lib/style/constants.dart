// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Color.fromARGB(137, 0, 0, 0),
  fontFamily: 'Montserrat',
);

final kLabelStyle = TextStyle(
  color: Color.fromARGB(255, 0, 0, 0),
  fontWeight: FontWeight.bold,
  fontFamily: 'Montserrat',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromARGB(255, 0, 144, 72),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
