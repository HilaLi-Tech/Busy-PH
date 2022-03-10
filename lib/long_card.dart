import 'package:flutter/material.dart';
import 'classes/Category.dart';

class LongCard extends StatelessWidget {
  final Category top_service;
  LongCard({ required this.top_service });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: 500,
      height: 100,
      decoration:BoxDecoration(
        color: Colors.yellow[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
          children: [
            Expanded(child: Container(
                margin: EdgeInsets.only(top:20, left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                            top_service.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                          top_service.description,
                          style: TextStyle(
                              fontSize: 10,
                            fontStyle: FontStyle.italic,
                          ))]))),
            Container(
                margin: EdgeInsets.all(10),
                // height: 100,
                width: 150,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(top_service.image),
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                    )
                )
            )]),);
  }
}
