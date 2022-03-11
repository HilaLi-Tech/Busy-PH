import 'package:flutter/material.dart';
import 'dart:async';
import '../cards/bottom_navigation_bar.dart';
import '../cards/appbar.dart';
import 'package:intl/date_symbol_data_local.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  // void getCalendar() async {
  //   String username = await Future.delayed(Duration(seconds: 3), (){
  //      return "String";
  //   });
  // }
  @override
  void initState(){
    super.initState();
    // getCalendar();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: const PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBarBusy(),
      ),
      body: SingleChildScrollView(),
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
