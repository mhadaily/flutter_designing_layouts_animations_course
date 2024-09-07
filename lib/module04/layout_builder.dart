import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        maintainBottomViewPadding: false,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text('BottomAppBar'),
              ),
            ),
          ),
          body: LayoutBuilder(builder: (context, constrains) {
            if (constrains.maxWidth > 600) {
              return const DesktopLayout();
            } else {
              return const MobileLayout();
            }
          }),
        ),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
          child: const Center(
            child: Text('1'),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
          child: const Center(
            child: Text('2'),
          ),
        ),
      ],
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: const Center(
                child: Text('Menu 1'),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: const Center(
                child: Text('Menu 2'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: const Center(
                child: Text('1'),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: const Center(
                child: Text('2'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
