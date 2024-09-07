import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/two': (context) => const PageTwo(),
      },
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/two');
        },
        child: const Icon(Icons.navigate_next),
      ),
      body: const SafeArea(
        child: Center(
          child: Hero(
            tag: 'logo',
            child: FlutterLogo(
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: const SafeArea(
        child: Hero(
          tag: 'logo',
          child: FlutterLogo(
            size: 350.0,
          ),
        ),
      ),
    );
  }
}
