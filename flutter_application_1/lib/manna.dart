import 'package:flutter/material.dart';
import 'package:flutter_application_1/cardfood.dart';
import 'package:flutter_application_1/foodcard.dart';

class coatogrypg extends StatefulWidget {
  const coatogrypg({super.key});

  @override
  State<coatogrypg> createState() => _coatogrypgState();
}

class _coatogrypgState extends State<coatogrypg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(185, 174, 216, 210),
        title: Text('Food Items'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight + 6.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ),
      body: FoodMenuGrid(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => foodcatog()))
        },
        label: const Icon(Icons.restaurant_menu),
        backgroundColor: Color.fromARGB(255, 109, 164, 164),
      ),
    );
  }
}
