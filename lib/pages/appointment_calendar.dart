import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'basics_example.dart';


class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Marky's Phone Repair"),
        ),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const SizedBox(height: 20.0),
    ElevatedButton(
    child: Text('Set Appointment'),
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => TableBasicsExample()),
    ),
    )])));}}