import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';

class FirebaseHome extends StatefulWidget {
  FirebaseHome({Key? key}) : super(key: key);

  @override
  State<FirebaseHome> createState() => _FirebaseHomeState();
}

class _FirebaseHomeState extends State<FirebaseHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'firebase',
      body: Center(
        child: Text('firebase'),
      ),
    );
  }
}
