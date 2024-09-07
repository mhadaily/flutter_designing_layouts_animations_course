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
      home: Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: const Center(
                  child: Text('1'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 50,
                  color: Colors.green,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('2 - Flex 2'),
                      Text('2 - Flex 2'),
                      Text('2 - Flex 2'),
                      Row(
                        children: [
                          Text('2 - Flex 2'),
                          Text('2 - Flex 2'),
                          Text('2 - Flex 2'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text('3'),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
                child: const Center(
                  child: Text('4'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
