import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp(),
  );
}
/*
Let's explore how the Row widget in Flutter arranges its children.

The layout of a Row proceeds through six key steps:

First, any children without a flex factor, such as those not wrapped in Expanded or Flexible, are laid out. These children are given unlimited horizontal space but are constrained by the incoming vertical constraints. If crossAxisAlignment is set to CrossAxisAlignment.stretch, the children will stretch vertically to match the maximum height provided by the parent.

Second, the remaining horizontal space is divided among the children that have a non-zero flex factor, such as those wrapped in Expanded or Flexible. The distribution of space depends on each child’s flex factor. For example, a child with a flex factor of 2 receives twice as much space as a child with a flex factor of 1.

Third, the children with a flex factor are laid out. They use the same vertical constraints as in the first step, but now the horizontal constraints are based on the space allocated in the second step. Children wrapped with Flexible.fit: FlexFit.tight must fill the allocated space, while those with FlexFit.loose have the option to use less space.

Fourth, the Row calculates its height based on the maximum height of its children, ensuring that the height respects the incoming vertical constraints.

Fifth, the width of the Row is determined. If mainAxisSize is set to MainAxisSize.max, the Row expands to fill the maximum width available. If it’s set to MainAxisSize.min, the width will be the sum of the children’s widths.

Finally, the Row positions its children according to the mainAxisAlignment and crossAxisAlignment. For instance, if mainAxisAlignment is set to MainAxisAlignment.spaceBetween, any remaining horizontal space is evenly distributed between the children.
*/

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.red,
                child: const Text('First!'),
              ),
              const Text('Second!'),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Third!'),
                  ),
                  const Text('Fourth!'),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Third!'),
                  ),
                  const Text('Fourth!'),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.green,
                      child: const Text('Fifth!'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
In this example, we have a Row with four children. The first and last children have fixed widths and heights, while the middle two children are wrapped in Expanded widgets with different flex factors.

Step 1: The first and last children are laid out with their fixed widths and heights.
Step 2: The remaining horizontal space is divided between the two Expanded children according to their flex factors.
Step 3: These Expanded children are then laid out within their allocated space.
Step 4: The Row takes its height as the maximum height of all its children, which is 50 pixels.
Step 5: The Row sets its width based on the available space, since mainAxisSize is defaulted to MainAxisSize.max.
Step 6: Finally, the Row positions its children with space between them, as determined by MainAxisAlignment.spaceBetween.
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Widget Demo'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
                child: Center(child: Text('1')),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 50,
                  child: Center(child: Text('2 - Flex 2')),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 50,
                  child: Center(child: Text('3 - Flex 1')),
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                width: 50,
                child: Center(child: Text('4')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/