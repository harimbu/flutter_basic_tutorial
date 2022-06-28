import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';

class SqliteHome extends StatefulWidget {
  SqliteHome({Key? key}) : super(key: key);

  @override
  State<SqliteHome> createState() => _SqliteHomeState();
}

class _SqliteHomeState extends State<SqliteHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'sqlite',
      body: Center(
        child: Text('Sqlite...'),
      ),
    );
  }
}
