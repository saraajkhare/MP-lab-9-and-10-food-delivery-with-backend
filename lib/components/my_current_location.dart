import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  // Function to show address input dialog
  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text("Enter location"),
            content: const TextField(
              decoration: InputDecoration(hintText: "Search address.."),
            ),
            actions: [
              // Cancel button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              // Save button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Save'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // "Deliver now" label
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          // Address row with clickable GestureDetector
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address text
                Text(
                  "Sardar Patel",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Dropdown icon
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
