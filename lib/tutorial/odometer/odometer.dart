import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:odometer/odometer.dart';

class Odometer extends StatefulWidget {
  const Odometer({Key? key}) : super(key: key);

  @override
  State<Odometer> createState() => _OdometerState();
}

class _OdometerState extends State<Odometer> {
  int _counter = 10000;

  void _incrementCounter() {
    setState(() {
      _counter += 10000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Odometer',
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSlideOdometerNumber(
              odometerNumber: OdometerNumber(_counter),
              duration: Duration(milliseconds: 1000),
              letterWidth: 35,
              numberTextStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
