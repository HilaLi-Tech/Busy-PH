import 'package:flutter/material.dart';
import 'dart:async';
import '../cards/bottom_navigation_bar.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), (){
       return "String";
    });
  }
  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(),
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
