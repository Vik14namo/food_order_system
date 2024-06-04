import 'package:flutter/material.dart';
import 'package:flutter_application_1/sidebar.dart';

void main() {
  runApp(const MyApp());
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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Navbar(),
          appBar: AppBar(
            title: const Text('Navigation Drawer'),
            backgroundColor: Colors.pink,
          ),
          body: const Center(
              child: Text('i am here', style: TextStyle(fontSize: 40.0))),
        ));
  }
}
