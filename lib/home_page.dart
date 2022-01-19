// ignore_for_file: unnecessary_const

import 'package:appsignup/bgimage_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome Home Page")),
      body: SingleChildScrollView(
        child: Column(children: [
          const BgImagePage(),
          const Text(
            "Welcome to Home Page",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 160,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 160,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 160,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
