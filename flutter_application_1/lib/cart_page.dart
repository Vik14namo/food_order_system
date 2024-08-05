import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartProvider.cartItems.length,
        itemBuilder: (context, index) {
          final item = cartProvider.cartItems[index];
          return ListTile(
            leading: Icon(item.foodItem.icon, color: item.foodItem.iconColor),
            title: Text.rich(
              TextSpan(
                text: item.foodItem.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 11, 11, 11),
                ),
                children: [
                  WidgetSpan(
                    child: Transform.translate(
                      offset: const Offset(2, -10),
                      child: Text(
                        item.foodItem.code,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 43, 42, 42),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    cartProvider.decreaseQuantity(item.foodItem);
                  },
                ),
                Text(item.quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    cartProvider.increaseQuantity(item.foodItem);
                  },
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                cartProvider.removeFromCart(item.foodItem);
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle order now action
          },
          child: Text('Order Now'),
        ),
      ),
    );
  }
}
