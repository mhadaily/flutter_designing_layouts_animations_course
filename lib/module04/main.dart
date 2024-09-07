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
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              final ratio = constraints.maxWidth > 600 ? 4 / 3 : 16 / 9;
              return Center(
                child: AspectRatio(
                  aspectRatio: ratio,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const FlutterLogo(
                      size: 100,
                      style: FlutterLogoStyle.stacked,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
