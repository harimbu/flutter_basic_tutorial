import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHome extends StatefulWidget {
  HiveHome({Key? key}) : super(key: key);

  @override
  State<HiveHome> createState() => _HiveHomeState();
}

class _HiveHomeState extends State<HiveHome> {
  final box = Hive.box('setting');

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'hive',
      body: ValueListenableBuilder(
        valueListenable: Hive.box('setting').listenable(),
        builder: (_, box, widget) {
          return Center(
            child: Switch(
              value: Hive.box('setting').get('darkMode'),
              onChanged: (val) {
                Hive.box('setting').put(
                  'darkMode',
                  !Hive.box('setting').get('darkMode'),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Hive.box('setting').put(
            'darkMode',
            !Hive.box('setting').get('darkMode'),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
