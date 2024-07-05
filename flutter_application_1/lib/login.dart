import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background image
      body: Stack(
        children: <Widget>[
          // Background image container

          Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/aba.jpg'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login form content (shifted down slightly)
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // App logo (adjust width/height as needed)
                  Image.asset(
                    'assets/loha.png',
                    width: 150.0,
                    height: 250.0,
                  ),
                  const SizedBox(height: 20.0),

                  // Username field
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'ID Number',
                    ),
                  ),
                  const SizedBox(height: 20.0),

                  // Password field
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20.0),

                  // Login button
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()))
                    },
                  ),
                  const SizedBox(height: 20.0),

                  // Sign Up text
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account?'),
                      SizedBox(width: 5.0),
                      Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      //appBar: AppBar(
      //  title: Text('Login'),
      //),
    );
  }
}
