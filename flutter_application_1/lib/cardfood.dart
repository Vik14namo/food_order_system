import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Menu Grid'),
        ),
        body: FoodMenuGrid(),
      ),
    );
  }
}

class FoodMenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2, // Adjust columns as needed
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: [
          FoodItem(
            icon: Icons.circle,
            iconColor: Colors.red,
            code: 'R-15',
            name: 'Chicken Kolhapuri ',
          ),
          FoodItem(
            icon: Icons.circle,
            iconColor: Colors.red,
            code: 'R-16',
            name: 'Chicken lolipop',
          ),
          FoodItem(
            icon: Icons.circle,
            iconColor: Colors.green,
            code: 'R-17',
            name: 'Paneer Noodles',
          ),
          // ... Add remaining FoodItem widgets
        ],
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String code;
  final String name;

  FoodItem({
    required this.icon,
    required this.iconColor,
    required this.code,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: //BoxDecoration(
          //   color: Colors.grey[400],
          //   borderRadius: BorderRadius.circular(8.0),
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.black26,
          //       blurRadius: 6.0,
          //       spreadRadius: 2.0,
          //       offset: Offset(2.0, 2.0),
          //     ),
          //   ],
          // ),
          BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(111, 124, 162, 163),
              boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: iconColor),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Wrap(
                // Wrap the Text widget
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20, // Increased text size
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 11, 11),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      fontSize: 15, // Increased text size
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 43, 42, 42),
                    ),
                    overflow: TextOverflow.ellipsis,
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
