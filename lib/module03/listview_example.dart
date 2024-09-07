import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (int i = 0; i < 15; i++)
          Container(
            height: 50,
            color: Colors.amber[(i * 100) % 900],
            child: Center(child: Text('Entry $i')),
          ),
      ],
    );
  }
}

class ListViewBuilderExample extends StatelessWidget {
  ListViewBuilderExample({super.key});
  final List<String> entries = List<String>.generate(
    25,
    (int index) => 'Number $index',
  );
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[(index * 100) % 900],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
    );
  }
}

class ListViewSeparatedExample extends StatelessWidget {
  ListViewSeparatedExample({super.key});
  final List<String> entries = List<String>.generate(
    25,
    (int index) => 'number $index',
  );
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[(index * 100) % 900],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
