import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {

  //products for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "Hoodie",
      price: 1499,
      description: "Black men hoodie. Quality premium product which gives you sense of style after you get into it.",
      imagePath: 'assets/hoodie6.jpeg',
    ),


    //product 2
    Product(
      name: "Sunglass",
      price: 699,
      description: "Black circular sunglass. Stylish to wear and with a compact design sense with extra light weight.",
      imagePath: 'assets/sunglass2.jpeg',
    ),


    //product 3
    Product(
      name: "T-Shirt",
      price: 899,
      description: "Minimal black tshirt with a simple print of aerospace lover. 100% cotton with a quality fabric and look cool when you wear this.",
      imagePath: 'assets/tshirt4.png',
    ),


    //product 4
    Product(
      name: "Shoe",
      price: 1999,
      description: "Black leather shoe. Brings you confidence when you walk. Formal shoe with a extra ordinary style sense and with a great durability. ",
      imagePath: 'assets/shoe2.jpeg',
    ),

    //product 5
    Product(
      name: "Hat",
      price: 499,
      description: "Black hat. Premium quality product with a compact and simple design. Brings you extra shine whenever you wear this.",
      imagePath: 'assets/hat.png',
    ),

     //product 6
    Product(
      name: "Watch",
      price: 1199,
      description: "Men wrist watch. Black and aesthetic design. Makes you feel royal with this product in your hand.",
      imagePath: 'assets/watch.png',
    ),


  ];


  //user cart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}