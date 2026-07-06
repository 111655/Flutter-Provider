import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> products = [
    Product(
      title: "Nike Shoes",
      price: 2999,
      image:
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
    ),
    Product(
      title: "Headphones",
      price: 1999,
      image:
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
    ),
    Product(
      title: "Watch",
      price: 3999,
      image:
      "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
    ),
    Product(
      title: "Laptop",
      price: 55999,
      image:
      "https://images.unsplash.com/photo-1496181133206-80ce9b88a853",
    ),
    Product(
      title: "Camera",
      price: 45999,
      image:
      "https://images.unsplash.com/photo-1516035069371-29a1b244cc32",
    ),
    Product(
      title: "Phone",
      price: 25999,
      image:
      "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9",
    ),
    Product(
      title: "Nike Shoes",
      price: 2999,
      image:
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
    ),
    Product(
      title: "Headphones",
      price: 1999,
      image:
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
    ),
    Product(
      title: "Watch",
      price: 3999,
      image:
      "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
    ),
    Product(
      title: "Laptop",
      price: 55999,
      image:
      "https://images.unsplash.com/photo-1496181133206-80ce9b88a853",
    ),
    Product(
      title: "Camera",
      price: 45999,
      image:
      "https://images.unsplash.com/photo-1516035069371-29a1b244cc32",
    ),
    Product(
      title: "Phone",
      price: 25999,
      image:
      "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9",
    ),
    Product(
      title: "Nike Shoes",
      price: 2999,
      image:
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
    ),
    Product(
      title: "Headphones",
      price: 1999,
      image:
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
    ),
    Product(
      title: "Watch",
      price: 3999,
      image:
      "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
    ),
    Product(
      title: "Laptop",
      price: 55999,
      image:
      "https://images.unsplash.com/photo-1496181133206-80ce9b88a853",
    ),
    Product(
      title: "Camera",
      price: 45999,
      image:
      "https://images.unsplash.com/photo-1516035069371-29a1b244cc32",
    ),
    Product(
      title: "Phone",
      price: 25999,
      image:
      "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9",
    ),
  ];

  int cartItems = 0;

  void addToCart() {
    cartItems++;
    notifyListeners();
  }
}