import 'package:flutter/material.dart';
import 'package:build_ph/cards/long_card.dart';
import 'package:flutter/cupertino.dart';
import '../classes/Category.dart';
import '../cards/category_card.dart';
import '../cards/long_card.dart';
import '../cards/bottom_navigation_bar.dart';

class BusyPH extends StatefulWidget {
  const BusyPH({Key? key}) : super(key: key);

  @override
  State<BusyPH> createState() => _BusyPHState();
}

class _BusyPHState extends State<BusyPH> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busy PH',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Category> categories = [
    Category(title: "Hair and\nNails Services", description: "Have your hair cut in a professional salon.", image: "Salon.png", route: "/salon_category"),
    Category(title: "Auto Repair Services", description: "Motor vehicle maintenance.", image: "Auto.jpg", route: "/auto_category"),
    Category(title: "Plumbing\nRepair", description: "For all of your plumbing needs.", image: "Pipes.png", route: "/pipes_category"),
    Category(title: "Laundry and Dry Cleaning", description: "Add shine to your clothing!", image: "Laundry.jpg", route: "/laundry_category"),
    Category(title: "Sewing and Alteration", description: "Sewing and alteration for your fashion needs.", image: "Tailoring.jpg", route: "tailoring_category"),
  ];

  List<Category> top_performing = [
    Category(title: "Marky Phone Repair", description: "We repair any phone problems.", image: "Top_Phone_Repair.png", route: "/shop"),
    Category(title: "SonJay Car Wash", description: "Dirty car? No problem with SonJay Car wash!", image: "Top_Car_Wash.png", route: "/SonJay"),
    Category(title: "Pat'z Repair Shop", description: "Machines overheating? Systems crashing? We fix everything you need!", image: "Top_Repair_Shop.png", route: "/Patz")
  ];

  Widget categoryTemplate(category){
    return CategoryCard(category:category);
  }

  Widget longCardTemplate(top_service){
    return LongCard(top_service: top_service);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                        child: Text(
                          widget.title,
                          style:  const TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
                        child: Text(
                          "Thea Denisse Foronda",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        )),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/Logo.png',
                height: 80,
                width: 80,
              )
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: double.infinity,
        ),
      ),
      body: SingleChildScrollView(
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 20, 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 60,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    color: Colors.grey,
                                    icon: const Icon(Icons.search)),
                                const Text(
                                  "Search for Services",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(width: 100),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300],
                            )),
                        IconButton(
                            onPressed: () {},
                            color: Colors.grey[800],
                            icon: const Icon(Icons.filter_alt, size: 35))
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(33, 0, 0, 5),
                  child: Text("Categories",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                      textAlign: TextAlign.start),
                ),
                Container(
                    height: 250,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          // children: categories.map((category) => categoryTemplate(category)).toList(),
                          children: categories.map((category) => CategoryCard(
                              category: category,
                          // goto: () {
                          //       setState((){
                          //       });
                          // }
                          )).toList(),
                        ))),
                const Padding(
                  padding: const EdgeInsets.fromLTRB(33, 20, 0, 5),
                  child: Text("Top Performing Services",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                      textAlign: TextAlign.start),
                ),

                Column(
                  children: top_performing.map((top_service) => LongCard(
                      top_service: top_service,
                      // navigate: (){
                      //   setState(){
                      //     Navigator.pushNamed(context, top_service.route);
                      //   }
                      // }
                  )).toList(),
                )])),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}