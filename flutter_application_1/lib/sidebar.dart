import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView( children: [UserAccountsDrawerHeader(accountName: Text('Aleem Sir'), accountEmail: Text('aleemsir@gmail.com'))],),
    );
  }
}