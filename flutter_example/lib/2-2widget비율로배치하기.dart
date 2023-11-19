import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 비율로 배치하기'),
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
    return Row(
      children: [
        Container(width: 50, height: 200, color: Colors.red,),
        Expanded(child: Container(color: Colors.blue, width: 100,)),
        Flexible(child: Container(color: Colors.red, width: 100,)),
        // Flexible(flex: 2, child: Container(color: Colors.blue)),
        // Flexible(flex: 1, child: Container(color: Colors.green)),
        // Flexible(flex: 2, child: Container(color: Colors.yellow)),
      ],
    );
  }
}
