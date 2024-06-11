import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView( 
        padding:EdgeInsets.zero,
        children: [UserAccountsDrawerHeader(accountName: const Text('Vikram Holla v',style:TextStyle(color: Colors.black,fontSize: 30.0)), accountEmail: const Text('vikramholla14@gmail.com',style:TextStyle(color: Colors.blue,)),
        currentAccountPicture: CircleAvatar(
          child:ClipOval(child:Image.asset('assets/landing.jpg',))),
          decoration: BoxDecoration(color: const Color.fromARGB(255, 253, 248, 248),image: DecorationImage(image:AssetImage('assets/images.jpg'),fit:BoxFit.cover) ),

          ),
           ListTile(
        leading: Icon(Icons.logout),
      title:Text('Sign Out'),
      onTap:()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()))),
       
          ],
      ),
     
    );
  }
}