import 'package:flutter/material.dart';
import 'package:flutter_example/screen/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(initialLocation: '/', routes: [
        GoRoute(
            path: '/',
            name: 'home',
            builder: (context, _) => const HomeWidget()),
        GoRoute(
            path: '/new',
            name: 'new',
            builder: (context, _) => const NewPage()),
        GoRoute(
            path: '/new1',
            name: 'new1',
            builder: (context, _) => const NewPage2())
      ]),
      theme: customTheme,
    ),
  );
}

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
  useMaterial3: true, // 기본적으로 3가 true.
);

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
    final textTheme = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Go to Page',
            style: textTheme.bodyLarge,
          ),
          onPressed: () => context.pushNamed('new'),
        ),
      ),
    );
  }
}
