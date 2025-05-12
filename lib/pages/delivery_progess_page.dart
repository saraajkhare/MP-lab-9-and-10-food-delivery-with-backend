import 'package:flutter/material.dart';
import 'package:food/components/my_receipt.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  FirestoreService db = FirestoreService();
  bool _orderSaved = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_orderSaved) {
      String receipt = context.read<Restaurant>().displayCartReceipt();
      db.saveOrderToDatabse(receipt);
      _orderSaved = true; // Prevent multiple saves
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      body: Column(children: const [MyReceipt()]),
    );
  }

  //custom buttom nav bar
  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ),
          const SizedBox(width: 10),
          //driver details
          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sara Khare",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          const Spacer(),
          //message button
          Row(
            children: [
              // message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {}, // define your functionality here
                  icon: const Icon(Icons.message),
                ),
              ),
              const SizedBox(width: 10),
              //call button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {}, // define your functionality here
                  icon: const Icon(Icons.call),
                  color: Colors.green[200],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
