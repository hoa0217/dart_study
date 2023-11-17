import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('Tab!');
              },
            ),
            Icon(Icons.play_arrow),
          ],
          title: Text('This is App bar'),
        ),
        body: TestWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () {
            print('Tab! FAB!');
          },
        ),
      ),
    ),
  );
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 50,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
