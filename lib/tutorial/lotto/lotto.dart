import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';

class Lotto extends StatefulWidget {
  const Lotto({Key? key}) : super(key: key);

  @override
  State<Lotto> createState() => _LottoState();
}

class _LottoState extends State<Lotto> {
  List<int> lottoList = [];

  @override
  void initState() {
    super.initState();
    lottoNumber();
  }

  void lottoNumber() {
    lottoList =
        (List.generate(45, (index) => index++)..shuffle()).sublist(0, 6);
    print(lottoList);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Lotto Number',
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: lottoList.length,
          itemBuilder: (_, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  // lottoList[index].toString(),
                  '${lottoList[index]}',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
