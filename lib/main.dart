import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Text(
                  'Welcome to My Photo Gallery!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()
                    
                ),
              ),
            ),
            Wrap(
              children: [
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
                Image.network('https://www.w3schools.com/images/w3schools_green.jpg', height: 100, width: 120,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
