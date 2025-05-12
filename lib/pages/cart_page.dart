import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_cart_tile.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Clear Cart"),
                          content: const Text(
                            "Are you sure you want to clear the cart?",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                restaurant.clearCart();
                                Navigator.pop(context);
                              },
                              child: const Text("Yes"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("No"),
                            ),
                          ],
                        ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                          child: Center(
                            child: Text(
                              "Your cart is empty",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              // get individual cart item
                              final cartItem = userCart[index];

                              // return cart tile UI
                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                  ],
                ),
              ),

              //button to pay
              MyButton(
                text: "Checkout",
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
