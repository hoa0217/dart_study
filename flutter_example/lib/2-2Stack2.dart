import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 겹겹히 쌓아 배치하기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  /*이미지 위에 컨테이너를 올릴 때는 Stack을 사용(겹겹 올림)*/
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(150)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(140)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'count 0',
            style: TextStyle(color: Colors.red, fontSize: 32),
          ),
        )
      ],
    );
  }
}
