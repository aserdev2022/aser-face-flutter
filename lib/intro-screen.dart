// ignore_for_file: prefer_const_constructors

import 'package:aser_face/signup-screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroductionScreen(
          next: Text('next'),
          showNextButton: true,
          pages: [
            PageViewModel(
              bodyWidget: Text('you well have so much fun'),
              title: "welcome to aser_face",
              image: Image.asset('assets/cake.png'),
            ),
            PageViewModel(
              bodyWidget: Text('you can use search to find everything'),
              title: "you can find more",
              image: Image.asset('assets/cake.png'),
            ),
            PageViewModel(
              bodyWidget: Text('just signup to find more fun'),
              title: "are you ready",
              image: Image.asset('assets/cake.png'),
            ),
          ],
          showSkipButton: true,
          skip: const Text("Skip"),
          done:
              const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const signupscreen()),
            );
          },
          baseBtnStyle: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          skipStyle: TextButton.styleFrom(primary: Colors.red),
          doneStyle: TextButton.styleFrom(primary: Colors.green),
          nextStyle: TextButton.styleFrom(primary: Colors.blue),
        ),
      ),
    );
  }
}
