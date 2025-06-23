// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables, unused_import
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:welcome_page/auth/accessory.dart';
import 'package:welcome_page/auth/bags.dart';
import 'package:welcome_page/auth/blouses.dart';
import 'package:welcome_page/auth/custom_scaffold.dart';
import 'package:welcome_page/auth/dresses.dart';
import 'package:welcome_page/auth/shoes.dart';

class ProductFilterPage extends StatelessWidget {
  List<Product> products = [
    Product(
      name: 'dresses',
      image: 'images/d_6.jpg',
      pageLink: 'dresses',
    ),
    Product(
      name: 'bags',
      image: 'images/p12.jpg',
      pageLink: 'bags',
    ),
    Product(
      name: 'accessory',
      image: 'images/A10.jpg',
      pageLink: 'accessory',
    ),
    Product(
      name: 'blouses',
      image: 'images/t1.jpg',
      pageLink: 'blouses',
    ),
    Product(
      name: 'Shoes',
      image: 'images/sh25.jpg',
      pageLink: 'Shoes',
    ),
    Product(
      name: 'skirts',
      image: 'images/sk1.jpg',
      pageLink: 'skirts',
    ),
  ];

  ProductFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Categories',
            style: TextStyle(color: Color.fromARGB(255, 7, 164, 255)),
          )),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            Product product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, product.pageLink);
              },
              child: Card(
                color: Color.fromARGB(255, 205, 224, 235),
                child: Column(
                  children: [
                    Image.asset(
                      product.image,
                      height: 250,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 7, 164, 255),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      showBottomNavBar: true,
      initialIndex: 1,
    );
  }
}

class Product {
  final String name;
  final String image;
  final String pageLink;

  Product({required this.name, required this.image, required this.pageLink});
}

class App2 extends StatelessWidget {
  const App2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => ProductFilterPage(),
          'dresses': (context) => const Dresses(),
          'bags': (context) => const Bags(),
          'accessory': (context) => const Accessory(),
          'blouses': (context) => const Blouses(),
          'shoes': (context) => const Shoes(),
        });
  }
}
