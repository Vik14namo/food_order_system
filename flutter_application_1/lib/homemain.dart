/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/sidebar.dart';

class homeTable1 extends StatefulWidget {
  const homeTable1({super.key});
  @override
  _homeTable1State createState() => _homeTable1State();
}

class _homeTable1State extends State<homeTable1> {
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
          padding: const EdgeInsets.all(5.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 5, crossAxisSpacing: 10),
            children: [
              
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TableViewApp()));
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
                        size: 10,
                        color: Color.fromARGB(255, 39, 38, 38),
                        
                      ),
                      const SizedBox(height: 10),
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
                      MaterialPageRoute(builder: (context) => homeTable1()));

                 
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
                      MaterialPageRoute(builder: (context) => homeTable1()));
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
                      MaterialPageRoute(builder: (context) => homeTable1()));
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
                      MaterialPageRoute(builder: (context) => homeTable1()));
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
}*/
import 'package:flutter/material.dart';

void main() => runApp(TableViewApp());

class TableViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TableViewScreen(),
    );
  }
}

class TableViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table View'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your menu action here
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(113, 114, 112, 112),
                   
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                      
                      Text(
                        "First Floor",
                        style: TextStyle(color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                      )
                    ],
                  ),
                ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}
/*
  Widget _statusIndicator(String label, Color color) {
    return Row(
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
        SizedBox(width: 5),
        Text(label),
      ],
    );
  }

  Widget _tableItem(BuildContext context, int tableNumber) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        title: Text('Table No:$tableNumber', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('View'),
              onPressed: () {
                // Handle view button press
              },
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
*/