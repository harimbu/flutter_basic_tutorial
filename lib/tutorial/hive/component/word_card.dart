import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final GestureTapCallback onBodyTap;
  final GestureTapCallback onCheckTap;
  final String eng;
  final String kor;
  final int count;

  const WordCard({
    required this.onBodyTap,
    required this.onCheckTap,
    required this.eng,
    required this.kor,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onBodyTap,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eng,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text('맞은 횟수 $count'),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onCheckTap,
          child: Icon(Icons.check),
        ),
      ],
    );
  }
}
