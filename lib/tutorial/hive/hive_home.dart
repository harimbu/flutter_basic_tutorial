import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:flutter_basic_tutorial/model/word_model.dart';
import 'package:flutter_basic_tutorial/tutorial/hive/add_page.dart';
import 'package:flutter_basic_tutorial/tutorial/hive/component/word_card.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
        child: ValueListenableBuilder(
            valueListenable: Hive.box<WordModel>('word').listenable(),
            builder: (_, Box<WordModel> box, child) {
              return ListView.separated(
                itemBuilder: (_, index) {
                  final item = box.getAt(index);

                  if (item == null) {
                    return Container();
                  } else {
                    return WordCard(
                      onBodyTap: () {},
                      onCheckTap: () {},
                      eng: item.eng,
                      kor: item.kor,
                      count: 0,
                    );
                  }
                },
                separatorBuilder: (_, index) {
                  return Divider();
                },
                itemCount: box.length,
              );
            }),
      ),
    );
  }
}
