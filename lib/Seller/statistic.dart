import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  @override
  StatisticState createState() => StatisticState();
}

class StatisticState extends State<Statistic> {
  Widget panel(String label, String price) {
    return Container(
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color(0xFF95D7AE),
        child: ListTile(
          title: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                price,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.right,
              )),
          subtitle: Text(label, style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 230,
          padding: EdgeInsets.all(10),
          child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              childAspectRatio: 1.75,
              physics: NeverScrollableScrollPhysics(),
              children: [
                panel('Revenue', '\$25,000'),
                panel('Completed', '28'),
                panel('Pending', '9'),
                panel('Cancelled', '4')
              ]),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
      ],
    );

    // Container(
    //   child: GridView.count(
    //       // Create a grid with 2 columns. If you change the scrollDirection to
    //       // horizontal, this produces 2 rows.
    //       crossAxisCount: 2,
    //       children: [
    //         panel('Revenue', '\$25,000'),
    //         panel('Completed', '28'),
    //         panel('Pending', '9'),
    //         panel('Cancelled', '4')
    //       ]),
    // );
  }
}
