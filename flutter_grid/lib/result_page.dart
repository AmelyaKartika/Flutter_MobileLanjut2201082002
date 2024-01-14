import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String namaBarang;
  final String kodeBarang;
  final String hargaBarang;

  ResultPage({
    required this.namaBarang,
    required this.kodeBarang,
    required this.hargaBarang,
  });

  @override
  Widget build(BuildContext context) {
    double hargaBarangAwal = double.tryParse(hargaBarang) ?? 0.0;
    double hargaSetelahDiskon = hargaBarangAwal;

    // Terapkan diskon jika harga awal di atas 10000
    if (hargaBarangAwal > 10000) {
      double diskon = 0.02;
      double diskonAmount = hargaBarangAwal * diskon;
      hargaSetelahDiskon = hargaBarangAwal - diskonAmount;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Menampilkan hasil untuk barang
            buildResultRow("Nama Barang:", namaBarang),
            buildResultRow("Kode Barang:", kodeBarang),
            buildResultRow("Harga Awal:", hargaBarangAwal.toStringAsFixed(2)),
            buildResultRow("Harga Setelah Diskon:", hargaSetelahDiskon.toStringAsFixed(2)),
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
