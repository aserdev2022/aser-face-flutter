// ignore_for_file: prefer_const_constructors

import 'package:aser_face/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:aser_face/signup-screen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset('assets/1.jpg'),
            Image.asset('assets/2.jpg'),
            Image.asset('assets/3.jpg'),
            Image.asset('assets/4.jpg'),
            Image.asset('assets/6.jpg'),
            Image.asset('assets/7.jpg'),
            Image.asset('assets/8.jpg'),
            Image.asset('assets/9.jpg'),
            Image.asset('assets/10.jpg'),
            Image.asset('assets/11.jpg'),
            Image.asset('assets/12.jpg'),
            Image.asset('assets/13.jpg'),
            Image.asset('assets/14.jpg'),
            Image.asset('assets/15.jpg'),
            Image.asset('assets/16.jpg'),
            Image.asset('assets/17.jpg'),
            Image.asset('assets/18.jpg'),
            Image.asset('assets/19.jpg'),
            Image.asset('assets/20.jpg'),
            Image.asset('assets/21.jpg'),
            Image.asset('assets/22.jpg'),
            Image.asset('assets/23.jpg'),
            Image.asset('assets/24.jpg'),
            Image.asset('assets/25.jpg'),
            Image.asset('assets/26.jpg'),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person),
                        Text(
                          usernameController.text,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  // Retrieve the text that the user has entered by using the
                                  // TextEditingController.
                                  content: Row(
                                    children: [
                                      Text('are you sure ' +
                                          usernameController.text),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const loginscreen()),
                                            );
                                          },
                                          child: Text('yes'))
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Text('logout!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('aser_face'),
          centerTitle: true,
        ),
      ),
    );
  }
}
