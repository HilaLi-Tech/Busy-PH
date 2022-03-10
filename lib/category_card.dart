import 'package:flutter/material.dart';
import 'classes/Category.dart';


//this dart file contains the category card template for the entire application
class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard({ required this.category });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.yellow[50],
        child: Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            color: Colors.yellow[50],
          ),
          width: 200,
          child: Card(
              color: Colors.yellow[50],
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Flexible(fit: FlexFit.tight,child: Container(
                              height: 100,
                              width: 200,
                              decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(category.image),
                                    fit: BoxFit.fitWidth,
                                    alignment: FractionalOffset.topCenter,
                                  )
                              )
                          ))]),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          height: 42,
                          child: Text(
                            category.title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                          category.description,
                          style: TextStyle(
                              fontSize: 10
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded( child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Container(
                              height: 30,
                              width: 30,
                              child:
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.add,
                                    color: Colors.orange[500]),
                                backgroundColor: Colors.orange[100],
                              ))]))
                    ],
                  )),
              elevation: 0),
        )
    );
  }
}