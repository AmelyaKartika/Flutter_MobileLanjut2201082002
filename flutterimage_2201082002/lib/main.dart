import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(child:Image(
          image: NetworkImage(
              'https://www.thefamouspeople.com/profiles/images/lionel-messi-2.jpg'),
        ),
        ),
      ),
    );
  }
}
