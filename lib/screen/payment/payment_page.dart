import 'package:flutter/material.dart';

import '../home/home_page.dart';

void main() {
  runApp(const MaterialApp(
    home: PaymentPage(),
  ));
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController editShippingName = TextEditingController();
    TextEditingController editShippingEmail = TextEditingController();
    TextEditingController editShippingAddress = TextEditingController();
    TextEditingController editShippingPincode = TextEditingController();
    TextEditingController creditCardNumber = TextEditingController();
    TextEditingController creditCardCvv = TextEditingController();

    return Scaffold(
      appBar: payActionbar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/images/shipping.png',
                      width: 150.0,
                      height: 150.0,
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total: 100.59CAD',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Products: 5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 3.0),
              const Text(
                'Please fill in the below details',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0),
              Material(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.transparent,
                child: TextField(
                  controller: editShippingName,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Material(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.transparent,
                child: TextField(
                  controller: editShippingEmail,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Material(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.transparent,
                child: TextField(
                  controller: editShippingAddress,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Address',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Material(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.transparent,
                child: TextField(
                  controller: editShippingPincode,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Postal Code',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Material(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.transparent,
                child: TextField(
                  controller: creditCardNumber,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Credit Card Number',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Material(
                borderRadius: BorderRadius.circular(4.0),
                color: Colors.transparent,
                child: TextField(
                  controller: creditCardCvv,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'CVV',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String name = editShippingName.text.trim();
                  String email = editShippingEmail.text.trim();
                  String address = editShippingAddress.text.trim();
                  String pincode = editShippingPincode.text.trim();
                  String cardNumber = creditCardNumber.text.trim();
                  String cvv = creditCardCvv.text.trim();
                  print("Name: $name");
                  if (name.isEmpty) {
                    return;
                  }

                  if (email.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(email)) {
                    return;
                  }

                  if (address.isEmpty) {
                    return;
                  }
                  if (pincode.isEmpty) {
                    return;
                  }
                  if (cardNumber.isEmpty) {
                    return;
                  }
                  if (cvv.isEmpty) {
                    return;
                  }

                  print("all success");

                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        title: Text('Processing Payment'),
                        content: CircularProgressIndicator(),
                      );
                    },
                  );

                  Future.delayed(const Duration(seconds: 3), () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage())); // Navigate to HomeScreen)
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                child: Text('CHECKOUT'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget payActionbar() {
    return AppBar(
      title: const Text('Checkout Page'),
    );
  }
}
