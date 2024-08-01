import 'package:flutter/material.dart';
import 'package:flutter_application_1/cardfood.dart';
import 'package:flutter_application_1/login.dart';
//import 'package:flutter_application_1/sidebar.dart';
import 'package:provider/provider.dart';

import 'favorite_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      );
  }
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Menu Grid'),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritePage()),
                );
              },
            ),
          ],
        ),
        body: FoodMenuGrid(),
      ),
    );
  }
}
