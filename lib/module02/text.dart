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
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 24,
            color: Colors.green,
          ),
        ),
      ),
      home: Scaffold(
        body: Column(
          children: [
            const Text('Simple Text'),
            const Text(
              'Another Simple Text',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
            Text(
              'Third Simple Text',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            RichText(
              text: const TextSpan(
                text: 'Hello ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'bold',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' world!',
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'bold',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' world!',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
