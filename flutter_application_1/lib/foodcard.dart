import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class foodcatog extends StatefulWidget {
  const foodcatog({super.key});

  @override
  State<foodcatog> createState() => _foodcatogState();
}

class _foodcatogState extends State<foodcatog> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount;
    if (screenWidth < 600) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 4;
    }
    return Scaffold(
      appBar: AppBar(title: Text('Category')),
      body: Padding(
        padding: EdgeInsets.all(8.0), // Reduced padding to use more space
        child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            DashboardOption(
              color: Color.fromARGB(113, 114, 112, 112),
              label: 'Startes',
            ),
            DashboardOption(
              color: Color.fromARGB(113, 114, 112, 112),
              label: 'chinese',
            ),
            DashboardOption(
              color: Color.fromARGB(113, 114, 112, 112),
              label: 'South Indian',
            ),
            DashboardOption(
              color: Color.fromARGB(113, 114, 112, 112),
              label: 'North Indian',
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardOption extends StatelessWidget {
  final String label;
  final Color color;

  const DashboardOption({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle navigation or action here
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                  height: 20), // Increased space between icon and text
              Text(
                label,
                style: TextStyle(
                  fontSize: 20, // Increased text size
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 11, 11, 11),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
