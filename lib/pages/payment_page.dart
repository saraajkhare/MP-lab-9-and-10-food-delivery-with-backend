import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food/components/my_button.dart';
import 'package:food/pages/delivery_progess_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = 'XXX';
  bool isCvvFocused = false;

  // user tapped pay button
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: const Text("Confirm Payment"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text("Card Number: $cardNumber"),
                    Text("Expiry Date: $expiryDate"),
                    Text("Card Holder Name: $cardHolderName"),
                    Text("CVV Code: $cvvCode"),
                  ],
                ),
              ),
              actions: [
                //cancel button
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),

                //yes button
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeliveryProgressPage(),
                      ),
                    );
                  },
                  child: const Text("Yes"),
                ),
              ],
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("Checkout"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          //credit card
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
            isChipVisible: false,
          ),

          //credit card form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
                isCvvFocused = data.isCvvFocused;
              });
            },

            formKey: formKey,
            themeColor: Colors.blue,
          ),

          const Spacer(),
          MyButton(text: "Pay Now!", onTap: userTappedPay),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
