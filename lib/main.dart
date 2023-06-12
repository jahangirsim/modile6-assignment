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

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  
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
                    border: OutlineInputBorder()),
              ),
            ),
            Wrap(
              children: [
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo1!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1WQyxvFCUeq3tRuWTQRb32tl3IsTb84mX',
                      height: 110,
                      width: 110,

                    ),),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo2!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1NLRw6UNd8bT5udAW8kiw1BV8vJIunJ7z',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo3!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1B6QlO5P7IQajdvwlLcgM9eqy7JaZrqOs',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo4!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1_mJM3-UIMJ9yErZSlsChyHTyGd-jz_k4',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo5!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1IMS0cgxqaft68q1lalw5GSifXE96mrlz',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo6!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1qw5B1T0FIYbehLWFVQN9Fkwah0hcB09Z',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo7!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1fScktQzWJctpSlBNr7bwKZYoTqHL64iu',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo8!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=18mKXqxpM4jkgjmHXUYlTK5HJD9D6mlfN',
                      height: 110,
                      width: 110,
                    )),
                OutlinedButton(
                    onPressed: () {MySnackBar('Clicked on photo9!', context);},
                    child: Image.network(
                      'https://drive.google.com/uc?export=view&id=1fnLrHRcjEk373qcUCEhGce9bazTTmbjQ',
                      height: 110,
                      width: 110,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      'https://drive.google.com/uc?export=view&id=1WQyxvFCUeq3tRuWTQRb32tl3IsTb84mX',
                    ),
                    title: Text('This is Sore O'),
                    subtitle: Text('Shorborno'),
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://drive.google.com/uc?export=view&id=1NLRw6UNd8bT5udAW8kiw1BV8vJIunJ7z',
                    ),
                    title: Text('This is Sore AA'),
                    subtitle: Text('Shorborno'),
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://drive.google.com/uc?export=view&id=1B6QlO5P7IQajdvwlLcgM9eqy7JaZrqOs',
                    ),
                    title: Text('This is Sore O'),
                    subtitle: Text('Shorborno'),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: (){
              MySnackBar("Photos Uploaded Successfully!", context);
            }, icon: Icon(Icons.upload),alignment: Alignment.bottomRight,)
          ],
        ),
      ),
    );
  }
}
