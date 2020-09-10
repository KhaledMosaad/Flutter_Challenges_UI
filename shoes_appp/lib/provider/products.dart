import 'package:flutter/material.dart';
import './data.dart';

class Products with ChangeNotifier {
  List<ShoesData> products = [
    ShoesData(
      img: 'assets/images/2.jpg',
      title: 'Black Shoes',
      price: 199,
      old: 500,
    ),
    ShoesData(
      img: 'assets/images/3.jpg',
      title: 'Fantastic',
      price: 199,
      old: 400,
    ),
    ShoesData(
      img: 'assets/images/5.jpg',
      title: 'White Shoes',
      price: 280,
      old: 350,
    ),
    ShoesData(
      img: 'assets/images/6.jpg',
      title: 'Full White Shoes',
      price: 310,
      old: 500,
    ),
    ShoesData(
      img: 'assets/images/7.jpg',
      title: 'Costum Shoes',
      price: 99,
      old: 200,
    ),
  ];
  List<ShoesData> get product {
    return [...products];
  }
}
