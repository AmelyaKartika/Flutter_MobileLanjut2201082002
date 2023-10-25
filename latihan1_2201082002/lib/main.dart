import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatelessWidget {
  final TextEditingController bpController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mathController = TextEditingController();
  final TextEditingController algoController = TextEditingController();
  final TextEditingController javaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft, // Menetapkan posisi ke kiri atas
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Nomor BP'),
                  TextField(
                    controller: bpController,
                  ),
                  Text('Nama Mahasiswa'),
                  TextField(
                    controller: nameController,
                  ),
                ],
              ),
            ),
            TextField(
              controller: mathController,
              decoration: InputDecoration(labelText: 'Nilai Matematika'),
            ),
            TextField(
              controller: algoController,
              decoration: InputDecoration(labelText: 'Nilai Algoritma'),
            ),
            TextField(
              controller: javaController,
              decoration: InputDecoration(labelText: 'Nilai Java'),
            ),
            ElevatedButton(
              onPressed: () {
                final bp = bpController.text;
                final name = nameController.text;
                final mathScore = double.parse(mathController.text);
                final algoScore = double.parse(algoController.text);
                final javaScore = double.parse(javaController.text);

                // Menghitung nilai rata-rata
                final averageScore = (mathScore + algoScore + javaScore) / 3;

                // Menghitung nilai tertinggi
                final maxScore = [mathScore, algoScore, javaScore]
                    .reduce((a, b) => a > b ? a : b);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(bp, name, mathScore,
                        algoScore, javaScore, averageScore, maxScore),
                  ),
                );
              },
              child: Text('Proses'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final String bp;
  final String name;
  final double mathScore;
  final double algoScore;
  final double javaScore;
  final double averageScore;
  final double maxScore;

  ResultPage(this.bp, this.name, this.mathScore, this.algoScore, this.javaScore,
      this.averageScore, this.maxScore);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Proses'),
      ),
      body: Align(
        alignment: Alignment.topLeft, // Menetapkan posisi ke kiri atas
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Menambahkan jarak dari tepi
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Menyusun elemen ke kiri
            children: <Widget>[
              Text('Nomor BP : $bp'),
              Text('Nama Mahasiswa : $name'),
              Text('Nilai Matematika : $mathScore'),
              Text('Nilai Algoritma : $algoScore'),
              Text('Nilai Java : $javaScore'),
              Text('Nilai Rata-rata : $averageScore'),
              Text('Nilai Tertinggi : $maxScore'),
            ],
          ),
        ),
      ),
    );
  }
}
