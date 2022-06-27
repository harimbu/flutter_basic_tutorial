import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';

class AddPage extends StatefulWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String eng = '';
  String kor = '';

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: '단어추가',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => eng = value,
                  decoration: InputDecoration(
                    label: Text('영어'),
                  ),
                ),
                TextField(
                  onChanged: (value) => kor = value,
                  decoration: InputDecoration(
                    label: Text('한국어'),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('단어추가'),
          )
        ],
      ),
    );
  }
}
