import 'package:appsignup/bgimage_page.dart';
import 'package:appsignup/register_page.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usercontroller = TextEditingController();
  final paawordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BgImagePage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(98.0),
              child: Card(
                color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter your gmail",
                                hintStyle: TextStyle(color: Colors.black),
                                label: Text(
                                  "Gmail",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                ),
                                suffix: Icon(Icons.mail, color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter your password",
                                hintStyle: TextStyle(color: Colors.black),
                                label: Text(
                                  "Password",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                suffix: Icon(Icons.lock, color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                            //       MaterialPageRoute(
                            //           builder: (context) =>
                            //               const RegisterPage()));
                          },
                          child: const Text("Login"),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Register",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
