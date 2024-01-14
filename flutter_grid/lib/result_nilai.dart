import 'package:flutter/material.dart';

class ResultPageMahasiswa extends StatelessWidget {
  final String nim;
  final String nama;
  final String nilai;

  ResultPageMahasiswa({
    required this.nim,
    required this.nama,
    required this.nilai,
  });

  @override
  Widget build(BuildContext context) {
    double nilaiValue = double.tryParse(nilai) ?? 0.0;

    String nilaiHuruf = getNilaiHuruf(nilaiValue);

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Data Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildResultRow("NOBP:", nim),
            buildResultRow("Nama:", nama),
            buildResultRow("Nilai:", nilai),
            buildResultRow("Nilai Huruf:", nilaiHuruf),
          ],
        ),
      ),
    );
  }

  String getNilaiHuruf(double nilai) {
    if (nilai > 80) {
      return 'A';
    } else if (nilai > 65) {
      return 'B';
    } else {
      return 'E';
    }
  }

  Widget buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
