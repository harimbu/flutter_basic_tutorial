import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/tutorial/firebase/firebase_home.dart';
import 'package:flutter_basic_tutorial/tutorial/hive/hive_home.dart';
import 'package:flutter_basic_tutorial/tutorial/json/json_home.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class Route {
  final String title;
  final Widget page;

  Route({
    required this.title,
    required this.page,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  final routes = [
    Route(title: 'hive', page: HiveHome()),
    Route(title: 'firebase', page: FirebaseHome()),
    Route(title: 'json', page: JsonHome()),
  ];

  renderRoute({required Route route}) {
    return InkWell(
      onTap: () {
        Get.to(() => route.page);
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(route.title),
          ],
        ),
      ),
    );
  }

  renderPage() {
    return ListView.separated(
      itemBuilder: (_, index) {
        return renderRoute(route: routes[index]);
      },
      separatorBuilder: (_, index) {
        return Container(
          height: 1.0,
          color: Colors.grey.shade300,
        );
      },
      itemCount: routes.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter basic'),
      ),
      body: renderPage(),
    );
  }
}
