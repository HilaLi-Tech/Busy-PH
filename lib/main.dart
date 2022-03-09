import 'package:flutter/material.dart';
import './Seller/seller_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busy PH',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: MyHomePage(title: 'Welcome'),
      home: SellerPage(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        const Padding(
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
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      width: 200,
                      child: Card(
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
                                    image: const AssetImage('assets/images/Salon.png'),
                                    fit: BoxFit.fitWidth,
                                    alignment: FractionalOffset.topCenter,
                                  )
                                  )
                              ))]),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Salons",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                  "Have your hair cut in a professional salon"),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(Icons.add,
                                        color: Colors.orange[500]),
                                    backgroundColor: Colors.orange[100],
                                  )]))
                            ],
                          )),
                          elevation: 0),
                    ),
                  ],
                ))),
        const Padding(
          padding: const EdgeInsets.fromLTRB(33, 0, 0, 5),
          child: Text("Top Performing Services",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              textAlign: TextAlign.start),
        ),
        Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 30,
              width: 200,
              child: Card(
                  child: Column(
                    children: [],
                  ),
                  elevation: 50),
            )
          ],
        )),
      ]),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notifications'),
      ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
