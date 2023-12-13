import 'package:flutter/material.dart';
import 'Product.dart';
import '_payment_cart_model.dart';

class Res {
  static const String hp = "assets/images/hp.png";
  static const String acer = "assets/images/acer.png";
  static const String asus = "assets/images/asus.png";
  static const String toshiba = "assets/images/toshiba.png";
  static const String apple = "assets/images/apple.png";
  static const String dell = "assets/images/dell.png";
  static List<Product> fetchProducts() {
    List<Product> productList = [];
    productList.add(Product(
        color: Colors.amber.shade900,
        count: "3",
        description: "ASUS C424 14 Chromebook - Silver (Intel Celeron N4020 Processor/64GB eMMc/4GB RAM/Chrome OS)",
        image: Res.asus,
        info: "Asus Laptop",
        price: "999.99",
        size: "512 GB Memory",
        tag: "gaming",
        title: "Asus"));
    productList.add(Product(
        color: Colors.lightBlue.shade500,
        count: "10",
        description: "Toshiba Gaming F15 15.6 Gaming Laptop - Mecha Grey (Intel Core i7-12700H/512GB SSD/16GB RAM/GeForce RTX 4050)",
        image: Res.toshiba,
        info: "toshiba laptops",
        price: "1299",
        size: "1 TB Memory",
        tag: "gaming",
        title: "Toshiba"));
    productList.add(Product(
        color: Colors.yellow.shade800,
        count: "30",
        description: "HP Elitebook 840 G5, 14 Laptop, Core i7 8th Gen (1.7Ghz), 16Gb RAM, 512Gb SSD, Windows 11",
        image: Res.hp,
        info: "hp laptops",
        price: "899.99",
        size: "512 GB Memory",
        tag: "gaming",
        title: "HP"));
    productList.add(Product(
        color: Colors.pink,
        count: "5",
        description: "Acer 15.6” Gaming Laptop - Mica Silver (AMD Ryzen 5 7535HS/512GB SSD/8GB RAM/GeForce RTX 2050/Win 11)",
        image: Res.acer,
        info: "acer laptops",
        price: "999",
        size: "1TB Memory",
        tag: "gaming",
        title: "Acer"));
    productList.add(Product(
        color: Colors.teal,
        count: "15",
        description: "Apple MacBook Pro 14 (2023) - Space Grey (Apple M2 Pro / 512GB SSD / 16GB RAM) ",
        image: Res.apple,
        info: "apple",
        price: "1500",
        size: "512 GB Memory",
        tag: "apple",
        title: "Apple"));
    productList.add(Product(
        color: Colors.red,
        count: "15",
        description: "Dell Latitude 7000 7420 Laptop (2021) | 14 FHD Touch | Core i7-512GB SSD - 16GB RAM | 4 Cores @ 4.4 GHz - 11th Gen CPU Win 10 Pro",
        image: Res.dell,
        info: "Dell",
        price: "999",
        size: "512 GB Memory",
        tag: "dell",
        title: "Dell"));
    return productList;
  }

  static List<PayCard> getPaymentTypes() {
    List<PayCard> cards = [];
    cards.add(PayCard(
        title: "Net Banking",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    cards.add(PayCard(
        title: "Credit Card",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    cards.add(PayCard(
        title: "Debit Card",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    cards.add(PayCard(
        title: "Wallet pay",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    return cards;
  }
}
