import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';

class HiveHome extends StatefulWidget {
  HiveHome({Key? key}) : super(key: key);

  @override
  State<HiveHome> createState() => _HiveHomeState();
}

class _HiveHomeState extends State<HiveHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'hive',
      body: Center(
        child: Text('hive'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
