import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  final entries = List.generate(16, (i) => 'Entry $i');

  late AnimationController _controller;
  List<Animation<double>> _animations = [];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    for (int i = 0; i < entries.length; i++) {
      double start = i / entries.length;
      double end = start + 0.4;
      final animation = CurvedAnimation(
        parent: _controller,
        curve: Interval(
          start / 4,
          end / 4,
          curve: Curves.easeInOut,
        ),
      );
      _animations.add(animation);
    }

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _animations[index],
                builder: (BuildContext context, Widget? child) {
                  return Opacity(
                    opacity: _animations[index].value,
                    child: Transform.translate(
                      offset: Offset(
                        50 * (1 - _animations[index].value),
                        0.0,
                      ),
                      child: child,
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  color: Colors.amber[(index * 100) % 900],
                  child: Center(child: Text('Entry $index')),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
