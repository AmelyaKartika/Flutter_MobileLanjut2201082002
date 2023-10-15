import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 var questions = [
      'What is your favourite Color?',
      'What is your favourite food?'
    ];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO : implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void selectAnswer() {
    setState(() {
      if (questionIndex<questions.length-1) {
        questionIndex = questionIndex + 1;
      }else {
        questionIndex = 0;
      }
    });

    print(questionIndex);
  }

  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(),
          body: Column(
            children: [
              Text(questions[questionIndex]),
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
