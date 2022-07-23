import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/tutorial/json/json_address.dart';
import 'package:flutter_basic_tutorial/tutorial/json/json_student.dart';
import 'package:get/get.dart';
import 'package:flutter_basic_tutorial/tutorial/firebase/firebase_home.dart';
import 'package:flutter_basic_tutorial/tutorial/hive/hive_home.dart';
import 'package:flutter_basic_tutorial/tutorial/lotto/lotto.dart';
import 'package:flutter_basic_tutorial/tutorial/odometer/odometer.dart';

class Route {
  final String title;
  final Widget page;
  Route({
    required this.title,
    required this.page,
  });
}

class Home extends StatelessWidget {
  final menus = [
    Route(title: 'firebase', page: FirebaseHome()),
    Route(title: 'hive', page: HiveHome()),
    Route(title: 'lotto', page: Lotto()),
    Route(title: 'odometer', page: Odometer()),
    Route(title: 'json-student', page: JsonStudent()),
    Route(title: 'json-address', page: JsonAddress()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter tutorial'),
      ),
      body: renderPage(),
    );
  }

  renderPage() {
    return ListView.separated(
      itemCount: menus.length,
      separatorBuilder: ((context, index) => Divider()),
      itemBuilder: ((context, index) {
        return renderMenu(menu: menus[index]);
      }),
    );
  }

  renderMenu({required Route menu}) {
    return InkWell(
      onTap: () {
        Get.to(() => menu.page);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(menu.title),
            Icon(Icons.chevron_right_sharp),
          ],
        ),
      ),
    );
  }
}
