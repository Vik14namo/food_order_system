import 'package:flutter/material.dart';
import 'cardfood.dart'; // Adjust this import based on your file structure

class CartItem {
  final FoodItemData foodItem;
  int quantity;

  CartItem(this.foodItem, this.quantity);
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(FoodItemData item) {
    final cartItem = _cartItems.firstWhere(
      (cartItem) => cartItem.foodItem == item,
      orElse: () => CartItem(item, 0),
    );

    if (cartItem.quantity == 0) {
      _cartItems.add(cartItem);
    }
    cartItem.quantity += 1;
    notifyListeners();
  }

  void removeFromCart(FoodItemData item) {
    _cartItems.removeWhere((cartItem) => cartItem.foodItem == item);
    notifyListeners();
  }

  void increaseQuantity(FoodItemData item) {
    final cartItem = _cartItems.firstWhere((cartItem) => cartItem.foodItem == item);
    cartItem.quantity += 1;
    notifyListeners();
  }

  void decreaseQuantity(FoodItemData item) {
    final cartItem = _cartItems.firstWhere((cartItem) => cartItem.foodItem == item);
    if (cartItem.quantity > 1) {
      cartItem.quantity -= 1;
    } else {
      removeFromCart(item);
    }
    notifyListeners();
  }
}
