import 'package:coba2/result_nilai.dart';
import 'package:flutter/material.dart';

class InputMahasiswaPage extends StatefulWidget {
  @override
  _InputMahasiswaPageState createState() => _InputMahasiswaPageState();
}

class _InputMahasiswaPageState extends State<InputMahasiswaPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController nilaiController = TextEditingController();
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: Colors.black, width: 2.0),
  );

  final TextStyle buttonTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildLinedTextField(namaController, "Nama"),
            buildLinedTextField(nimController, "NIM"),
            buildLinedTextField(nilaiController, "Nilai"),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPageMahasiswa(
                        nama: namaController.text,
                        nim: nimController.text,
                        nilai: nilaiController.text,
                      ),
                    ),
                  );
                },
                child: Text("Proses", style: buttonTextStyle),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLinedTextField(
      TextEditingController controller, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          Container(
            width: 200,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: outlineInputBorder,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
