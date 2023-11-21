import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ConstrainsWidget(),
      ),
    );
  }
}

class ConstrainsWidget extends StatelessWidget {
  const ConstrainsWidget({super.key});

  /* 참고 : https://docs.flutter.dev/ui/layout/constraints */
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.blue,
            child: Text(
              'Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Flexible(
          child: Container(
              color: Colors.red,
              child: Text(
                'Hello World!',
                style: TextStyle(fontSize: 30),
              )),
        ),
      ],
    );
  }
}
