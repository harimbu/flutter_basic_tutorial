import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:flutter_basic_tutorial/tutorial/hive/add_page.dart';
import 'package:flutter_basic_tutorial/tutorial/hive/component/word_card.dart';
import 'package:get/get.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddPage());
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemBuilder: (_, index) {
            return WordCard(
              onBodyTap: () {},
              onCheckTap: () {},
              eng: 'text',
              kor: '테스트',
              count: 0,
            );
          },
          separatorBuilder: (_, index) {
            return Divider();
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
