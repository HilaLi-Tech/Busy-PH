import 'package:flutter/material.dart';
import 'dart:async';
import '../cards/bottom_navigation_bar.dart';
import '../cards/appbar.dart';
import 'appointment_calendar.dart';
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
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBarBusy(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
           Stack(
             overflow: Overflow.visible,
                    children: [
                      Row(children:[
                      Expanded(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      // height: 100,
                      height: 100,
                      decoration:  BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/Top_Phone_Repair.png'),
                            fit: BoxFit.fitWidth,
                            alignment: FractionalOffset.topCenter,
                          )
                      )
                  )
                )]),
                      Positioned(
                          top: 90,
                          left: 20,
                          child: Container(
                          width: 100,
                          height: 100,
                          decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.white, width: 10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Corporate_Dudebros.jpg'),
                                fit: BoxFit.cover,
                                alignment: FractionalOffset.topCenter,
                              )
                          )
                      )),
                      Positioned(
                        left: 130,
                          top: 130,
                          child: Text("Marky's Phone Repair",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),)),
                      Positioned(
                          left: 130,
                          top: 155,
                          child: Container(
                            height:20,
                            width: 60,
                            child: Text("Follow",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue, fontSize: 12)),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                            ),
                          ))
                    ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 80, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                "Open Hours: 10 AM - 5 PM",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Text(
                "Location: Quezon City (500m from Home)",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            width: 300,
                            height: 300,
                            decoration:  BoxDecoration(
                              // borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/Map_Text.jpg'),
                                  fit: BoxFit.fitWidth,
                                  alignment: FractionalOffset.topCenter,
                                )
                            )
                        ),

                      ],
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context,
                              new MaterialPageRoute(builder: (context) => StartPage()));
                        });
                      },
                        child: Container(
                      height:20,
                      width: 400,
                      child: Text("Set Appointment",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blue, fontSize: 12)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)
                      ),
                    ))
          ]))])
      ),
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
