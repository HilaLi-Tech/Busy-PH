import 'package:flutter/material.dart';
import 'package:build_ph/cards/long_card.dart';
import '../../classes/Category.dart';
import '../../cards/long_card.dart';

class ShopOnCateg extends StatefulWidget {
  @override
  ShopOnCategState createState() => ShopOnCategState();
}

class ShopOnCategState extends State<ShopOnCateg> {
  List<Category> onCateg = [
    Category(
        title: "Sienna Cuts",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: "Top_Phone_Repair.png",
        route: "/Marky"),
    Category(
        title: "BARBERian ",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: "Top_Car_Wash.png",
        route: "/SonJay"),
    Category(
        title: "P's Cut and Groom",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: "Top_Repair_Shop.png",
        route: "/Patz"),
    Category(
        title: "Ceilo's Melody",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: "Top_Repair_Shop.png",
        route: "/Patz"),
    Category(
        title: "BARBERian ",
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: "Top_Car_Wash.png",
        route: "/SonJay"),
  ];

  Widget longCardTemplate(top_service) {
    return LongCard(top_service: top_service);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {},
            ),
            const Text('Salons'),
          ]),
          backgroundColor: Color(0xFFA0B39E),
        ),
        body: ListView(
          children: onCateg
              .map((top_service) => LongCard(top_service: top_service))
              .toList(),
        ));
  }
}
