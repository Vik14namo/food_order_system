import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

import 'package:flutter_application_1/sidebar.dart';

import 'package:flutter_application_1/order.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/logo.png'),
          height: 30,
          width: 30,
        ),
        backgroundColor: const Color.fromARGB(255, 92, 89, 89),
        
      ),
      
      body: 
      Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            children: [
              
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(113, 114, 112, 112),
                    boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )]
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Color.fromARGB(255, 39, 38, 38),
                        
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Ground Floor",
                        style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ordermenu()));

                 
                },
               child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(113, 114, 112, 112),
                    boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )]
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Color.fromARGB(255, 39, 38, 38),
                        
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "First Floor",
                        style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(113, 114, 112, 112),
                    boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )]
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Color.fromARGB(255, 39, 38, 38),
                        
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Secound Floor",
                        style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ordermenu()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(113, 114, 112, 112),
                    boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )]
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Color.fromARGB(255, 39, 38, 38),
                        
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Third Floor",
                        style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(113, 114, 112, 112),
                    boxShadow:[ BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )]
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.celebration,
                        size: 40,
                        color: Color.fromARGB(255, 39, 38, 38),
                        
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Party Hall",
                        style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: const Text('Resver'), backgroundColor: Color.fromARGB(189, 201, 173, 253),
      ),
    );
  }
}
    
    
