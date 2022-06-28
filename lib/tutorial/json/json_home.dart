import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:flutter_basic_tutorial/tutorial/json/user_model.dart';

class JsonHome extends StatefulWidget {
  JsonHome({Key? key}) : super(key: key);

  @override
  State<JsonHome> createState() => _JsonHomeState();
}

class _JsonHomeState extends State<JsonHome> {
  List user = [];

  readJson() async {
    final response = await rootBundle.loadString('assets/user.json');
    final data = await jsonDecode(response);
    setState(() {
      user = data.map((json) => UserModel.fromJson(json)).toList();
    });

    print(user);
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'json',
      body: ListView.separated(
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(child: Text(user[index].name)),
        ),
        separatorBuilder: (_, index) => Divider(),
        itemCount: user.length,
      ),
    );
  }
}
