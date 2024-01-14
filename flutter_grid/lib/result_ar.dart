import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String nama;
  final String nip;
  final String golongan;

  ResultPage({
    required this.nama,
    required this.nip,
    required this.golongan,
  });

  int calculateSalary(String golongan) {
    if (golongan == '1') {
      return 3000000;
    } else if (golongan == '2') {
      return 4000000;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    int gaji = calculateSalary(golongan);

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildResultRow("Nama:", nama),
            buildResultRow("NIP:", nip),
            buildResultRow("Golongan:", golongan),
            buildResultRow("Gaji:", 'Rp. $gaji'),
          ],
        ),
      ),
    );
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
