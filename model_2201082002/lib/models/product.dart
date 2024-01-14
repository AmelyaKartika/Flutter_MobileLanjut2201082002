import 'package:flutter/material.dart';

class Product {
  @required
  String judul;
  @required
  String imagesURL;
  @required
  int harga;
  @required
  String deskripsi;

  Product(this.imagesURL, this.judul, this.harga, this.deskripsi);
}