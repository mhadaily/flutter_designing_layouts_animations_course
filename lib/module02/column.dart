import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp(),
  );
}
/*
Let’s dive into how the Column widget in Flutter arranges its children.

The layout of a Column proceeds through six essential steps:

First, any children without a flex factor, such as those not wrapped in Expanded or Flexible, are laid out. These children are given unlimited vertical space but are constrained by the incoming horizontal constraints. If crossAxisAlignment is set to CrossAxisAlignment.stretch, the children will stretch horizontally to match the maximum width provided by the parent.

Second, the remaining vertical space is divided among the children that have a non-zero flex factor, such as those wrapped in Expanded or Flexible. The distribution of space depends on each child’s flex factor. For example, a child with a flex factor of 2 receives twice as much space as a child with a flex factor of 1.

Third, the children with a flex factor are laid out. They use the same horizontal constraints as in the first step, but now the vertical constraints are based on the space allocated in the second step. Children wrapped with Flexible.fit: FlexFit.tight must fill the allocated space, while those with FlexFit.loose have the option to use less space.

Fourth, the Column calculates its width based on the maximum width of its children, ensuring that the width respects the incoming horizontal constraints.

Fifth, the height of the Column is determined by the mainAxisSize property. If mainAxisSize is set to MainAxisSize.max, the Column expands to fill the maximum height available. If it’s set to MainAxisSize.min, the height will be the sum of the children’s heights.

Finally, the Column positions its children according to the mainAxisAlignment and crossAxisAlignment. For instance, if mainAxisAlignment is set to MainAxisAlignment.spaceBetween, any remaining vertical space is evenly distributed between the children.
*/

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // generate a example column widget with 3 children that also show main axis  and cross axis and alignement and so on
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.red,
                child: const Text('First!'),
              ),
              const Text('Second!'),
              // Flexible(child: null,),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Third!'),
                  ),
                  const Text('Fourth!'),
                ],
              ),
              Row(
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
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: const Text('Third!'),
                  ),
                  const Text('Fourth!'),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
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
In this example, we have a Column with four children. The first and last children have fixed widths and heights, while the middle two children are wrapped in Expanded widgets with different flex factors.

Step 1: The first and last children are laid out with their fixed widths and heights, given unlimited vertical space.
Step 2: The remaining vertical space is divided between the two Expanded children according to their flex factors.
Step 3: These Expanded children are then laid out within their allocated space.
Step 4: The Column calculates its width as the maximum width of all its children, which is 50 pixels.
Step 5: The height of the Column is set based on the mainAxisSize property. In this case, it's determined by the total height of the available space.
Step 6: Finally, the Column positions its children with space between them, as determined by MainAxisAlignment.spaceBetween.
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
          title: Text('Column Widget Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
                child: Center(child: Text('1')),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  width: 50,
                  child: Center(child: Text('2 - Flex 2')),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  child: Center(child: Text('3 - Flex 1')),
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
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