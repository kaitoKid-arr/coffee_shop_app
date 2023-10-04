import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // Note: Coffee for sale list
  final List<Coffee> _shop = [
    // Black Coffee
    Coffee(
      name: 'Black Coffee',
      price: '8.0000',
      imagePath: 'assets/images/coffee-cup.png',
    ),
    // Latte
    Coffee(
      name: 'Latte',
      price: '15.0000',
      imagePath: 'assets/images/coffee-cup1.png',
    ),
    // Expresso
    Coffee(
      name: 'Expresso',
      price: '10.0000',
      imagePath: 'assets/images/coffee-cup2.png',
    ),
    // Iced Coffee
    Coffee(
      name: 'Iced Coffee',
      price: '12.0000',
      imagePath: 'assets/images/coffee-cup3.png',
    ),
  ];

  // Note: User Cart
  List<Coffee> _userCart = [];

  // Note: Get Coffee List
  List<Coffee> get coffeeShop => _shop;

  // Note: get User Cart
  List<Coffee> get userCart => _userCart;

  // Note: Add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // Note: Remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
