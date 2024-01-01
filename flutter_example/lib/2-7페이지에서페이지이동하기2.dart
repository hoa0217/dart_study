import 'package:flutter/material.dart';
import 'package:flutter_example/screen/new_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewPage(),
                ));
          },
        ),
      ),
    );
  }
}
