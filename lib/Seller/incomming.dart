import 'package:flutter/material.dart';

class Incoming extends StatefulWidget {
  @override
  IncomingState createState() => IncomingState();
}

class IncomingState extends State<Incoming> {
  List<String> service = <String>[
    'Service 1',
    'Service 2',
    'Service 3',
    'Service 1',
    'Service 3'
  ];
  List<String> price = <String>['\$300', '\$250', '\$200', '\$300', '\$200'];
  List<String> cust_name = <String>[
    'Mark',
    'Patrick',
    'Yang',
    'Seinna',
    'Cielo'
  ];

  Widget _buildPending(String service, String price, String cust_name) {
    return Center(
        child: Card(
            elevation: 0,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        service,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  subtitle: Text(cust_name),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 75,
                        color: Color(0xFFF1D2FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.event,
                          color: Color.fromARGB(255, 102, 102, 102),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 75,
                        color: Color.fromARGB(255, 233, 159, 153),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.clear,
                          color: Color.fromARGB(255, 102, 102, 102),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 75,
                        color: Color(0xFFC1F1D3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.check,
                          color: Color.fromARGB(255, 102, 102, 102),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 75,
                        color: Color(0xFFC5F1FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.message_outlined,
                          color: Color.fromARGB(255, 102, 102, 102),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: service.length * 2,
      itemBuilder: (BuildContext context, int item) {
        if (item.isOdd) return Divider();
        final index = item ~/ 2;
        return _buildPending(service[index], price[index], cust_name[index]);
      },
    );
  }
}
