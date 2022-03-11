import 'package:flutter/material.dart';

class AppBarBusy extends StatelessWidget {
  const AppBarBusy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                      padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                      child: Text(
                        "Welcome",
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
      );
  }
}
