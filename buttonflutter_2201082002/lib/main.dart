import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void selectAnswer() {
    print('Answer select');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(),
          body: Column(
            children: [
              Text('First Question'),
              ElevatedButton(
                  onPressed: () => print('Answer 1 Selected'),
                  child: Text('Answer 1')),
              ElevatedButton(
                  child: Text('Answer 2'),
                  onPressed: () {
                    //----------------
                    print('Answer 2 Selected');
                  }),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 3')),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 4')),
            ],
          )),
    );
  }
}
