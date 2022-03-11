import 'package:flutter/material.dart';
import '../classes/Category.dart';
import '../pages/shop_page.dart';

class LongCard extends StatefulWidget {
  final Category top_service;
  // final Function navigate;
  LongCard({ required this.top_service});

  @override
  State<LongCard> createState() => _LongCardState();
}

class _LongCardState extends State<LongCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState((){
          Navigator.push(context,
          new MaterialPageRoute(builder: (context) => Shop()));
        });
      },
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: 500,
      height: 100,
      decoration:BoxDecoration(
        color: Colors.yellow[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(
                margin: EdgeInsets.only(top:20, left: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                            widget.top_service.title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                          widget.top_service.description,
                          style: TextStyle(
                              fontSize: 10,
                            fontStyle: FontStyle.italic,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //     height: 25,
                      //     width: 25,
                      //     child:
                      //     FloatingActionButton(
                      //       onPressed: () {},
                      //       child: Icon(Icons.arrow_forward_ios_rounded,
                      //           color: Colors.orange[500]),
                      //       backgroundColor: Colors.orange[100],
                      //     )
                      // )
                    ]
                )
            )
            ),
            Container(
                margin: EdgeInsets.all(10),
                // height: 100,
                width: 150,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(widget.top_service.image),
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                    )
                )
            )]),));
  }
}
