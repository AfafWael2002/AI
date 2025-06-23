// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, avoid_web_libraries_in_flutter, unused_import, unnecessary_import

import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Categories.dart';
import 'custom_scaffold.dart';
import 'productDetail.dart';

class Accessory extends StatefulWidget {
  const Accessory({super.key});

  @override
  State<Accessory> createState() => _Accessory();
}

class _Accessory extends State<Accessory> {
  List<Item> items = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    items = [
      Item(title: "b1", pricing: "\$80", images: [
        'images/A1.jpg',
        'images/A2.jpg',
        'images/A3.jpg',
      ]),
      Item(title: "b2", pricing: "\$20", images: [
        'images/A2.jpg',
        'images/A1.jpg',
        'images/A3.jpg',
      ]),
      Item(title: "b3", pricing: "\$30", images: [
        'images/A3.jpg',
        'images/A2.jpg',
        'images/A1.jpg',
      ]),
      Item(title: "b4", pricing: "\$40", images: [
        'images/A4.jpg',
        'images/A6.jpg',
        'images/A5.jpg',
      ]),
      Item(title: "b5", pricing: "\$30", images: [
        'images/A5.jpg',
        'images/A6.jpg',
        'images/A4.jpg',
      ]),
      Item(title: "b6", pricing: "\$50", images: [
        'images/A6.jpg',
        'images/A5.jpg',
        'images/A4.jpg',
      ]),
      Item(title: "b10", pricing: "\$60", images: [
        'images/A10.jpg',
        'images/A12.jpg',
      ]),
      Item(title: "b11", pricing: "\$40", images: [
        'images/A12.jpg',
        'images/A10.jpg',
      ]),
      Item(title: "b12", pricing: "\$20", images: [
        'images/A14.jpg',
        'images/A16.jpg',
        'images/A15.jpg',
      ]),
      Item(title: "b13", pricing: "\$30", images: [
        'images/A16.jpg',
        'images/A14.jpg',
        'images/A15.jpg',
      ]),
      Item(title: "b14", pricing: "\$40", images: [
        'images/A15.jpg',
        'images/A16.jpg',
        'images/A16.jpg',
      ]),
      Item(title: "b15", pricing: "\$30", images: [
        'images/A17.jpg',
        'images/A18.jpg',
      ]),
      Item(title: "b16", pricing: "\$50", images: [
        'images/A18.jpg',
        'images/A17.jpg',
      ]),
      Item(title: "b17", pricing: "\$70", images: [
        'images/A19.jpg',
        'images/A20.jpg',
      ]),
      Item(title: "b18", pricing: "\$70", images: [
        'images/A20.jpg',
        'images/A19.jpg',
      ]),
    ];
  }

  int myS = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Accessory",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 252, 250, 250),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  crossAxisCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: items
                      .where((Item) => Item.title
                          .toUpperCase()
                          .contains(searchText.toUpperCase()))
                      .map((Item) {
                    return buildCard(Item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        showBottomNavBar: true,
        initialIndex: 1,
      ),
    );
  }
}

Widget buildCard(Item Item) {
  return GestureDetector(
    onTap: () async {
      /*
      await Navigator.push(
        context as BuildContext,
        MaterialPageRoute(builder: (context) => const ProductDetail()),
      );*/
    },
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 16 / 9,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                initialPage: 0,
                autoPlay: false,
                onPageChanged: (index, reason) {}),
            items: Item.images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(
                    image,
                    fit: BoxFit.cover,
                  );
                },
              );
            }).toList(),
          ),
          ListTile(
            title: Center(
              child: Text(
                Item.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            subtitle: Center(
                child: Text(
              Item.pricing,
              style: const TextStyle(fontSize: 20),
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Details',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    )),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class Item {
  final String title;
  final String pricing;
  final List<String> images;
  int currentIndex;

  Item({
    required this.title,
    required this.pricing,
    required this.images,
    this.currentIndex = 0,
  });
}
