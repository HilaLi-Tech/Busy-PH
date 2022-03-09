import 'package:flutter/material.dart';
import 'incomming.dart';
import 'statistic.dart';

class SellerPage extends StatefulWidget {
  @override
  SellerPageState createState() => SellerPageState();
}

class SellerPageState extends State<SellerPage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              backgroundColor: Colors.white,
              title: const Text(
                'Service Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              actions: [
                IconButton(
                  icon: Image.asset('assets/images/Logo.png'),
                  onPressed: () {},
                  iconSize: 75,
                ),
              ],
              bottom: TabBar(labelColor: Colors.black, tabs: [
                Tab(
                  text: "Incomming",
                ),
                Tab(
                  text: "Appointments",
                ),
                Tab(
                  text: "Statistic",
                ),
              ]),
            ),
            body: TabBarView(
              children: [
                Incoming(),
                buildPage("Appointments"),
                Statistic(),
              ],
            )));
  }

  Widget buildPage(String text) => Center(
        child: Text(text, style: TextStyle(fontSize: 30)),
      );
}
