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

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _Shoeses();
}

class _Shoeses extends State<Shoes> {
  List<Item> items = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    items = [
      Item(title: "sh1", pricing: "\$80", images: [
        'images/sh26.jpg',
        'images/sh27.jpg',
        'images/sh28.jpg',
      ]),
      Item(title: "sh2", pricing: "\$20", images: [
        'images/sh28.jpg',
        'images/sh27.jpg',
        'images/sh26.jpg',
      ]),
      Item(title: "sh3", pricing: "\$30", images: [
        'images/sh23.jpg',
        'images/sh24.jpg',
        'images/sh25.jpg',
      ]),
      Item(title: "sh4", pricing: "\$40", images: [
        'images/sh29.jpg',
        'images/sh30.jpg',
      ]),
      Item(title: "sh5", pricing: "\$30", images: [
        'images/sh20.jpg',
        'images/sh21.jpg',
        'images/sh22.jpg',
      ]),
      Item(title: "sh6", pricing: "\$50", images: [
        'images/sh1.jpg',
        'images/sh2.jpg',
        'images/sh3.jpg',
      ]),
      Item(title: "b10", pricing: "\$60", images: [
        'images/sh4.jpg',
        'images/sh5.jpg',
        'images/sh6.jpg',
      ]),
      Item(title: "b11", pricing: "\$40", images: [
        'images/sh9.jpg',
        'images/sh7.jpg',
        'images/sh8.jpg',
      ]),
      Item(title: "b12", pricing: "\$20", images: [
        'images/sh10.jpg',
        'images/sh11.jpg',
        'images/sh12.jpg',
      ]),
      Item(title: "b13", pricing: "\$30", images: [
        'images/sh13.jpg',
        'images/sh14.jpg',
      ]),
      Item(title: "b14", pricing: "\$40", images: [
        'images/sh15.jpg',
        'images/sh16.jpg',
      ]),
      Item(title: "b15", pricing: "\$30", images: [
        'images/sh17.jpg',
        'images/sh18.jpg',
        'images/sh19.jpg',
      ]),
      Item(title: "b16", pricing: "\$50", images: [
        'images/sh27.jpg',
        'images/sh28.jpg',
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
                            "Shoeses",
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
                    onPressed: () {
                      /*
                          Navigator.of(context as BuildContext).push(MaterialPageRoute(
                          builder: (context) => const ProductDetail()));*/
                    },
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
