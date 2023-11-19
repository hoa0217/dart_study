import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하좌우로 배치하기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: Text('Container 3'),
            ),
          ],
        ),
        Container(
          width: 300,
          height: 120,
          color: Colors.grey,
          child: Text('Container4'),
        )
      ],
    );
  }
}
