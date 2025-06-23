// Cart Page (MyCart)

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome_page/Payment%20with%20API/register_screen.dart';
import 'package:welcome_page/card_provider.dart';
import 'custom_scaffold.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<String> productNames = [
    'Shirt 1',
    'shirt 2',
    'Shirt 3',
    'Shirt 4',
  ];
  List<int> quantities = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<double> prices = [30, 20, 300, 40, 50, 50, 70, 90, 30];
  List<String> images = [
    'images/2.jpg',
    'images/4.jpg',
    'images/6.jpg',
    'images/8.jpg',
    'images/2.jpg',
    'images/4.jpg',
    'images/6.jpg',
    'images/8.jpg',
  ];

  void incrementQuantity(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void decrementQuantity(int index) {
    setState(() {
      quantities[index]--;
    });
  }

  double getCartTotal() {
    double total = 0.0;
    for (int i = 0; i < productNames.length; i++) {
      total += quantities[i] * prices[i];
    }
    return total;
  }

  void showCheckoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Checkout'),
          content: const Text('Hurray! You have purchased the products'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RegisterScreen(
                    cartTotal:
                        getCartTotal(), // Pass cart total to payment page
                  ),
                ));
              },
              child: const Text('OK'),
            ), //TextButton
          ],
        ); //AlertDialog
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<CartItem> cartItems = Provider.of<CartProvider>(context).cartItems;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'CART',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ), //Text
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: ((context, index) {
                    CartItem item = cartItems[index];
                    return Dismissible(
                      key: Key(productNames[index]),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          productNames.removeAt(index);
                        });
                      },
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 16.0),
                        child: const Icon(Icons.cancel, color: Colors.white),
                      ), //Container
                      //margin: EdgeInsets.all(10.0),
                      //padding: EdgeInsets.only(right: 16.0),
                      // decoration: BoxDecoration(
                      //color: Colors.white,
                      //borderRadius: BorderRadius.circular(8),
                      // ), //BoxDecoration
                      child: Row(
                        children: [
                          Image.asset(
                            images[index],
                            height: 50,
                            width: 50,
                          ), //Image.asset
                          const SizedBox(width: 15.0),
                          Column(
                            children: [
                              Text(
                                //productNames[index],
                                item.name,
                                style: const TextStyle(fontSize: 18.0),
                              ), //Text
                              Text(
                                //'\$${prices[index]}',
                                '\$${item.price}',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.grey),
                              ), //Text
                            ],
                          ), //Column
                          const Spacer(),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  decrementQuantity(index);
                                },
                                icon: const Icon(Icons.remove),
                              ), //IconButton
                              Text(
                                quantities[index].toString(),
                                style: const TextStyle(fontSize: 18.0),
                              ), //Text
                              IconButton(
                                onPressed: () {
                                  incrementQuantity(index);
                                },
                                icon: const Icon(Icons.add),
                              ), //IconButton
                            ],
                          ), //Row
                        ],
                      ), //Row
                    ); //Dismissible
                  }), //Container
                ), //ListView.builder
              ), //Expanded
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text(
                      'Cart Total:',
                      style: TextStyle(fontSize: 18.0),
                    ), //Text
                    const SizedBox(width: 50.0),
                    Text(
                      '\$${getCartTotal().toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ), //Text
                  ],
                ), //Row
              ), //Padding
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showCheckoutDialog(
                              context); // Pass context to showCheckoutDialog
                        },
                        // style: ElevatedButton.styleFrom(primary: Colors.green),
                        child: const Text('Proceed to Checkout'),
                      ), //ElevatedButton
                    ), //Expanded
                  ],
                ), //Row
              ), //Padding
            ], //children
          ), //Column
        ), //Padding
      ), //SafeArea
      showBottomNavBar: true,
      initialIndex: 3,
    ); //CustomScaffold
  }
}
