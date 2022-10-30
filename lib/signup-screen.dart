import 'package:aser_face/home-screen.dart';
import 'package:flutter/material.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({Key? key}) : super(key: key);

  @override
  _signupscreenState createState() => _signupscreenState();
}

String username = '';
TextEditingController usernameController = TextEditingController();
TextEditingController passwdController = TextEditingController();

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          // When the user presses the button, show an alert dialog containing
          // the text that the user has entered into the text field.
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text that the user has entered by using the
                  // TextEditingController.
                  content: Text(usernameController.text),
                );
              },
            );
          },
          tooltip: 'Show me the value!',
          child: const Icon(Icons.text_fields),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.asset('assets/login.png'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  validator: (username) {
                    return null;
                  },
                  controller: usernameController,
                  decoration: const InputDecoration(
                    hintText: "myname@example.com",
                    label: Text('username'),
                    icon: Icon(Icons.login),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: ".....................",
                    label: Text('password'),
                    icon: Icon(Icons.password),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: ".....................",
                    label: Text('type it again'),
                    icon: Icon(Icons.key),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Container(
                  width: 1000,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const homescreen()),
                        );
                      },
                      child: const Text(
                        'signup',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('signup'),
        ),
      ),
    );
  }
}
