// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, avoid_web_libraries_in_flutter, unused_import, unnecessary_import

import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:welcome_page/auth/home.dart';
import 'Categories.dart';
import 'custom_scaffold.dart';
import 'productDetail.dart';

class Bags extends StatefulWidget {
  const Bags({super.key});

  @override
  State<Bags> createState() => _Bags();
}

class _Bags extends State<Bags> {
  List<CardItem> i1 = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    i1 = [
      CardItem(title: "b1", pricing: "\$80", images: [
        'images/p1.jpg',
        'images/p2.jpg',
        'images/p3.jpg',
        'images/p4.jpg',
      ]),
      CardItem(title: "b2", pricing: "\$20", images: [
        'images/p2.jpg',
        'images/p1.jpg',
        'images/p3.jpg',
        'images/p4.jpg',
      ]),
      CardItem(title: "b3", pricing: "\$30", images: [
        'images/p3.jpg',
        'images/p2.jpg',
        'images/p1.jpg',
        'images/p4.jpg',
      ]),
      CardItem(title: "b4", pricing: "\$40", images: [
        'images/p4.jpg',
        'images/p2.jpg',
        'images/p3.jpg',
        'images/p1.jpg',
      ]),
      CardItem(title: "b5", pricing: "\$30", images: [
        'images/p5.jpg',
        'images/p6.jpg',
        'images/p7.jpg',
      ]),
      CardItem(title: "b6", pricing: "\$50", images: [
        'images/p6.jpg',
        'images/p5.jpg',
        'images/p7.jpg',
      ]),
      CardItem(title: "b7", pricing: "\$50", images: [
        'images/p7.jpg',
        'images/p6.jpg',
        'images/p5.jpg',
      ]),
      CardItem(title: "b8", pricing: "\$15", images: [
        'images/p8.jpg',
        'images/p9.jpg',
        'images/p10.jpg',
      ]),
      CardItem(title: "b9", pricing: "\$35", images: [
        'images/p10.jpg',
        'images/p8.jpg',
        'images/p9.jpg',
      ]),
      CardItem(title: "b10", pricing: "\$60", images: [
        'images/p11.jpg',
        'images/p12.jpg',
        'images/p13.jpg',
      ]),
      CardItem(title: "b11", pricing: "\$40", images: [
        'images/p13.jpg',
        'images/p12.jpg',
        'images/p11.jpg',
      ]),
      CardItem(title: "b12", pricing: "\$20", images: [
        'images/p14.jpg',
        'images/p15.jpg',
      ]),
      CardItem(title: "b13", pricing: "\$30", images: [
        'images/p15.jpg',
        'images/p14.jpg',
      ]),
      CardItem(title: "b14", pricing: "\$40", images: [
        'images/p16.jpg',
        'images/p17.jpg',
        'images/p18.jpg',
        'images/p19.jpg',
        'images/p20.jpg',
      ]),
      CardItem(title: "b15", pricing: "\$30", images: [
        'images/p17.jpg',
        'images/p16.jpg',
        'images/p18.jpg',
        'images/p19.jpg',
        'images/p20.jpg',
      ]),
      CardItem(title: "b16", pricing: "\$50", images: [
        'images/p18.jpg',
        'images/p17.jpg',
        'images/p16.jpg',
        'images/p19.jpg',
        'images/p20.jpg',
      ]),
      CardItem(title: "b17", pricing: "\$70", images: [
        'images/p19.jpg',
        'images/p17.jpg',
        'images/p18.jpg',
        'images/p16.jpg',
        'images/p20.jpg',
      ]),
      CardItem(title: "b18", pricing: "\$70", images: [
        'images/p20.jpg',
        'images/p17.jpg',
        'images/p18.jpg',
        'images/p19.jpg',
        'images/p16.jpg',
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
                            "Bags",
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
                  children: i1
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

Widget buildCard(CardItem c1) {
  return GestureDetector(
    onTap: () async {
      await Navigator.push(
        context as BuildContext,
        MaterialPageRoute(builder: (context) => ProductDetail(cardItem: c1)),
      );
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
            items: c1.images.map((image) {
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
                c1.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            subtitle: Center(
                child: Text(
              c1.pricing,
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
