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
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/two') {
          return _createRoute(const PageTwo());
        }
        return _createRoute(const PageOne());
      },
    );
  }
}

// Custom Route for page transition
Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            )
                .chain(
                  CurveTween(curve: Curves.easeInOut),
                )
                .animate(
                  animation,
                ),
            child: child),
      );
    },
  );
}

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
      backgroundColor: Colors.blue,
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
