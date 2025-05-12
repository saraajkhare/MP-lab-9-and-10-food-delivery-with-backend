import 'package:intl/intl.dart';

import 'food.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food/models/cart_item.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Smoky BBQ Burger",
      description:
          "Beef patty, BBQ sauce, crispy onions, cheddar cheese, lettuce.",
      imagePath: "lib/images/images/burgers/burgers1.png",
      price: 149.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 29.0),
        Addon(name: "Bacon", price: 49.0),
        Addon(name: "Avocado", price: 49.0),
      ],
    ),
    Food(
      name: "Spicy Jalapeno Burger",
      description:
          "Spicy beef, jalapenos, pepper jack cheese, and chipotle mayo.",
      imagePath: "lib/images/images/burgers/burgers2.png",
      price: 179.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 29.0),
        Addon(name: "Bacon", price: 49.0),
        Addon(name: "Avocado", price: 49.0),
      ],
    ),
    Food(
      name: "Bacon Ranch Burger",
      description: "Juicy patty, bacon strips, ranch sauce, lettuce, tomato.",
      imagePath: "lib/images/images/burgers/burgers3.jpg",
      price: 199.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 29.0),
        Addon(name: "Bacon", price: 49.0),
        Addon(name: "Avocado", price: 49.0),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Grilled mushrooms, Swiss cheese, garlic aioli on a toasted bun.",
      imagePath: "lib/images/images/burgers/burgers4.png",
      price: 189.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 29.0),
        Addon(name: "Bacon", price: 49.0),
        Addon(name: "Avocado", price: 49.0),
      ],
    ),
    Food(
      name: "Double Decker Burger",
      description: "Two beef patties, double cheese, lettuce, tomato, onions.",
      imagePath: "lib/images/images/burgers/burgers5.png",
      price: 249.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 29.0),
        Addon(name: "Bacon", price: 49.0),
        Addon(name: "Avocado", price: 49.0),
      ],
    ),

    // Salads
    Food(
      name: "Greek Salad",
      description:
          "Tomatoes, cucumbers, olives, feta, and vinaigrette dressing.",
      imagePath: "lib/images/images/salads/salad1.png",
      price: 199.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 69.0),
        Addon(name: "Boiled Egg", price: 39.0),
      ],
    ),
    Food(
      name: "Garden Fresh Salad",
      description:
          "Mixed greens, carrots, cucumbers, cherry tomatoes, vinaigrette.",
      imagePath: "lib/images/images/salads/salad2.jpg",
      price: 179.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 69.0),
        Addon(name: "Boiled Egg", price: 39.0),
      ],
    ),
    Food(
      name: "Avocado Spinach Salad",
      description:
          "Spinach, avocado slices, red onion, sunflower seeds, lemon dressing.",
      imagePath: "lib/images/images/salads/salad3.jpeg",
      price: 229.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 69.0),
        Addon(name: "Boiled Egg", price: 39.0),
      ],
    ),
    Food(
      name: "Southwest Chicken Salad",
      description:
          "Grilled chicken, black beans, corn, lettuce, and chipotle dressing.",
      imagePath: "lib/images/images/salads/salad4.jpg",
      price: 249.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 69.0),
        Addon(name: "Boiled Egg", price: 39.0),
      ],
    ),
    Food(
      name: "Quinoa Kale Salad",
      description:
          "Superfood mix of kale, quinoa, cranberries, nuts, citrus dressing.",
      imagePath: "lib/images/images/salads/salad5.jpg",
      price: 259.0,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 69.0),
        Addon(name: "Boiled Egg", price: 39.0),
      ],
    ),

    // Sides
    Food(
      name: "Curly Fries",
      description: "Seasoned curly potato fries served hot and crispy.",
      imagePath: "lib/images/images/sides/sides1.jpg",
      price: 129.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 40.0),
        Addon(name: "Spicy Mayo", price: 20.0),
      ],
    ),
    Food(
      name: "Potato Wedges",
      description: "Thick-cut potato wedges with seasoning blend.",
      imagePath: "lib/images/images/sides/sides2.png",
      price: 139.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 40.0),
        Addon(name: "Spicy Mayo", price: 20.0),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy golden onion rings served with dipping sauce.",
      imagePath: "lib/images/images/sides/sides3.jpg",
      price: 119.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 40.0),
        Addon(name: "Spicy Mayo", price: 20.0),
      ],
    ),
    Food(
      name: "Cheesy Garlic Bread",
      description: "Toasted garlic bread slices topped with melted cheese.",
      imagePath: "lib/images/images/sides/sides4.jpg",
      price: 149.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 40.0),
        Addon(name: "Spicy Mayo", price: 20.0),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Breaded mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/images/sides/sides5.jpg",
      price: 159.0,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 40.0),
        Addon(name: "Spicy Mayo", price: 20.0),
      ],
    ),

    // Desserts
    Food(
      name: "Vanilla Ice Cream",
      description: "Creamy vanilla ice cream made with real vanilla beans.",
      imagePath: "lib/images/images/desserts/desserts1.jpg",
      price: 99.0,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "Vanilla Ice Cream", price: 50.0)],
    ),
    Food(
      name: "Strawberry Cheesecake",
      description: "Smooth cheesecake topped with fresh strawberry sauce.",
      imagePath: "lib/images/images/desserts/desserts2.jpg",
      price: 179.0,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "Vanilla Ice Cream", price: 50.0)],
    ),
    Food(
      name: "Fudge Brownie",
      description: "Rich and gooey brownie with chocolate chunks.",
      imagePath: "lib/images/images/desserts/desserts3.jpg",
      price: 159.0,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "Vanilla Ice Cream", price: 50.0)],
    ),
    Food(
      name: "Apple Pie",
      description: "Classic apple pie with a cinnamon-sugar crust.",
      imagePath: "lib/images/images/desserts/desserts4.jpg",
      price: 189.0,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "Vanilla Ice Cream", price: 50.0)],
    ),
    Food(
      name: "Tiramisu Cup",
      description: "Layered coffee-flavored Italian dessert.",
      imagePath: "lib/images/images/desserts/desserts5.png",
      price: 199.0,
      category: FoodCategory.desserts,
      availableAddons: [Addon(name: "Vanilla Ice Cream", price: 50.0)],
    ),

    // Drinks
    Food(
      name: "Lemon Iced Tea",
      description: "Chilled black tea with lemon juice and sugar syrup.",
      imagePath: "lib/images/images/drinks/drinks1.png",
      price: 99.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Almond Milk", price: 25.0),
        Addon(name: "Extra Shot", price: 40.0),
      ],
    ),
    Food(
      name: "Cold Brew Coffee",
      description: "Smooth and bold cold brew coffee on ice.",
      imagePath: "lib/images/images/drinks/drinks2.png",
      price: 129.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Almond Milk", price: 25.0),
        Addon(name: "Extra Shot", price: 40.0),
      ],
    ),
    Food(
      name: "Chocolate Milkshake",
      description: "Thick chocolate milkshake topped with whipped cream.",
      imagePath: "lib/images/images/drinks/drinks3.png",
      price: 149.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Almond Milk", price: 25.0),
        Addon(name: "Extra Shot", price: 40.0),
      ],
    ),
    Food(
      name: "Mango Smoothie",
      description: "Fresh mango blended with yogurt and ice.",
      imagePath: "lib/images/images/drinks/drinks4.png",
      price: 139.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Almond Milk", price: 25.0),
        Addon(name: "Extra Shot", price: 40.0),
      ],
    ),
    Food(
      name: "Classic Cold Coffee",
      description: "Sweetened chilled coffee with milk and ice.",
      imagePath: "lib/images/images/drinks/drinks5.png",
      price: 129.0,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Almond Milk", price: 25.0),
        Addon(name: "Extra Shot", price: 40.0),
      ],
    ),
  ];
  /*
  getters
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
operation


*/
  // user cart
  final List<CartItem> _cart = [];
  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      // if the cart item already exists, increase the quantity
      cartItem.quantity++;
    } else {
      // if the cart item does not exist, add it to the cart
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //remove from cart
  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
helpers


*/

  //genertate receipt
  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt:");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat(
      "yyyy-MM-dd HH:mm:ss",
    ).format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} = ${_formatPrice(cartItem.food.price)}",
      );

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }

      receipt.writeln();
    }

    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

  //format string od addoms into summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
