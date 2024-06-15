
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
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(168, 68, 69, 69),
          title:  Text(
             screentitle[controller!.index],
             // 'Home ',
             style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
            bottom: TabBar(
               controller: controller,
             labelColor: const Color.fromARGB(255, 14, 14, 14),
               unselectedLabelColor: Colors.white,
               overlayColor: const MaterialStatePropertyAll(Colors.white24),
               splashBorderRadius: BorderRadius.circular(30),
               splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
               enableFeedback: true,
               indicatorColor: Color.fromARGB(121, 83, 81, 81),
               indicatorWeight: 10,
               indicator: BoxDecoration(
                   color: const Color.fromARGB(255, 161, 157, 156), borderRadius: BorderRadius.circular(10)),
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
        ),
      ),
    );
  }
}
