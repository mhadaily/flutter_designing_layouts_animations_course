import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.sizeOf(context).width;
    final orientation = MediaQuery.orientationOf(context);

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            // scrollDirection: screenWidth > 600
            //     ? Axis.horizontal
            //     : Axis.vertical,
            scrollDirection: orientation == Orientation.landscape
                ? Axis.horizontal
                : Axis.vertical,
            children: [
              for (int i = 0; i < 15; i++)
                Container(
                  height: 50,
                  color: Colors.amber[(i * 100) % 900],
                  child: Center(child: Text('Entry $i')),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
