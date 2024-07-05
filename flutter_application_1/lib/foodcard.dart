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
    return Scaffold(
      appBar: AppBar(title: Text('Category')),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Reduced padding to use more space
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: const [
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
              showFavoriteButton: true,
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
  final bool showFavoriteButton;
  const DashboardOption({
    Key? key,
    required this.label,
    required this.color,
    this.showFavoriteButton = false,
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
          child: Stack(
            children: [
              Column(
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
              if (showFavoriteButton)
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () {
                      // Handle favorite action here
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
