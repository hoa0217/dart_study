import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless vs Stateful'),
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
      children: [ExampleStateless(), ExampleStateful(index: 3)],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

/*별도의 State객체를 통해 widget의 색깔이나 형태를 바꿀 수 있음.*/
class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose(); // 메모리 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() { // 상위 위젯에 상태가 바뀌었음을 알려줌 (rebuild)
            if (_index == 5) {
              _index = 0;
              return;
            }

            _index++;
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}
