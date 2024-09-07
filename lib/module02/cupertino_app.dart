import 'package:flutter/cupertino.dart';
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
    return const CupertinoApp(
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: Switch(value: true, onChanged: print),
        ),
      ),
      // home: CupertinoPageScaffold(
      //   child: Center(
      //     child: Text('Hello World!'),
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}
