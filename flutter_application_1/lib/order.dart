import 'package:flutter/material.dart';
import 'package:flutter_application_1/homemain.dart';

class ordermenu extends StatefulWidget {
  const ordermenu({super.key});

  @override
  State<ordermenu> createState() => _TabbarState();
}

class _TabbarState extends State<ordermenu>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  final screentitle = [
    'Ground Floor',
    'First Floor',
    'Second Floor',
    'Third Floor',
    'Party Hall'
  ];
  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    controller!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(185, 174, 216, 210),
        title: Text(
          screentitle[controller!.index],
          // 'Home ',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          controller: controller,
          labelColor: Color.fromARGB(255, 0, 0, 0),
          unselectedLabelColor: Color.fromARGB(255, 81, 84, 83),
          overlayColor:
              const MaterialStatePropertyAll(Color.fromARGB(60, 116, 163, 159)),
          splashBorderRadius: BorderRadius.circular(30),
          splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          enableFeedback: true,
          indicatorColor: Color.fromARGB(60, 116, 163, 159),
          indicatorWeight: 10,
          indicator: BoxDecoration(
              color: const Color.fromARGB(60, 116, 163, 159),
              borderRadius: BorderRadius.circular(10)),
          isScrollable: true,
          tabs: [
            Tab(
              icon: Icon(Icons.restaurant),
              text: 'Ground Floor',
              height: 100,
            ),
            Tab(
              icon: Icon(Icons.restaurant),
              text: 'First Floor',
              height: 100,
            ),
            Tab(
              icon: Icon(Icons.restaurant),
              text: 'Second Floor',
              height: 100,
            ),
            Tab(
              icon: Icon(Icons.restaurant),
              text: 'Third Floor',
              height: 100,
            ),
            Tab(
              icon: Icon(Icons.celebration),
              text: 'Party Hall',
              height: 100,
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          TableSelection(),
          TableSelection(),
          TableSelection(),
          TableSelection(),
          TableSelection()
        ],
      ),
    );
  }
}
