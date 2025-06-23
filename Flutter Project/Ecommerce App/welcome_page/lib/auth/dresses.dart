// ignore_for_file: unused_import, unnecessary_import, avoid_web_libraries_in_flutter, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:welcome_page/auth/home.dart';
import 'package:welcome_page/auth/pd.dart';
import 'package:welcome_page/auth/productDetail.dart';
import 'package:welcome_page/auth/custom_scaffold.dart';

class Dresses extends StatefulWidget {
  const Dresses({Key? key}) : super(key: key);

  @override
  State<Dresses> createState() => _DressesState();
}

class _DressesState extends State<Dresses> {
  List<Item> items = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    items = [
      Item(title: "dress_1", pricing: "80 EGP ", images: [
        'images/d_17.jpg',
        'images/d_18.jpg',
        'images/d_15.jpg',
        'images/d_16.jpg',
      ]),
      Item(title: "dress_2", pricing: "20", images: [
        'images/d_1.jpg',
        'images/d_2.jpg',
      ]),
      Item(title: "dress_3", pricing: "\$30", images: [
        'images/d_3.jpg',
        'images/d_4.jpg',
        'images/d_5.jpg',
      ]),
      Item(title: "dress_4", pricing: "\$40", images: [
        'images/d_6.jpg',
        'images/d_7.jpg',
        'images/d_8.jpg',
      ]),
      Item(title: "dress_5", pricing: "\$30", images: [
        'images/d_9.jpg',
        'images/d_10.jpg',
        'images/d_11.jpg',
      ]),
      Item(title: "dress_6", pricing: "\$50", images: [
        'images/d_12.jpg',
        'images/d_13.jpg',
        'images/d_14.jpg',
      ]),
      Item(title: "dress_7", pricing: "\$50", images: [
        'images/d_15.jpg',
        'images/d_16.jpg',
        'images/d_17.jpg',
        'images/d_18.jpg',
      ]),
      Item(title: "dress_8", pricing: "\$15", images: [
        'images/d_5.jpg',
        'images/d_3.jpg',
        'images/d_4.jpg',
      ]),
      Item(title: "dress_9", pricing: "\$35", images: [
        'images/d_11.jpg',
        'images/d_10.jpg',
        'images/d_9.jpg',
      ]),
      Item(title: "dress_10", pricing: "60 EGP", images: [
        'images/d_14.jpg',
        'images/d_13.jpg',
        'images/d_12.jpg',
      ]),
      Item(title: "dress_11", pricing: "40 EGP", images: [
        'images/d_7.jpg',
        'images/d_8.jpg',
        'images/d_6.jpg',
      ]),
      Item(title: "dress_12", pricing: "20 EGP", images: [
        'images/d_2.jpg',
        'images/d_1.jpg',
      ]),
      Item(title: "dress_13", pricing: "30 EGP", images: [
        'images/d_4.jpg',
        'images/d_5.jpg',
        'images/d_3.jpg',
      ]),
      Item(title: "dress_14", pricing: "40 EGP", images: [
        'images/d_8.jpg',
        'images/d_7.jpg',
        'images/d_6.jpg',
      ]),
      Item(title: "dress_15", pricing: "30 EGP", images: [
        'images/d_10.jpg',
        'images/d_9.jpg',
        'images/d_11.jpg',
      ]),
      Item(title: "dress_16", pricing: "50 EGP", images: [
        'images/d_13.jpg',
        'images/d_14.jpg',
        'images/d_12.jpg',
      ]),
      Item(title: "dress_17", pricing: "70 EGP", images: [
        'images/d_16.jpg',
        'images/d_18.jpg',
        'images/d_17.jpg',
        'images/d_15.jpg',
      ]),
      Item(title: "dress_18", pricing: "70 EGP", images: [
        'images/d_18.jpg',
        'images/d_16.jpg',
        'images/d_15.jpg',
        'images/d_17.jpg',
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
                            "Dresses",
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
                      .where((item) => item.title
                          .toUpperCase()
                          .contains(searchText.toUpperCase()))
                      .map((item) {
                    return buildCard(context, item); // Pass context here
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        showBottomNavBar: true,
        initialIndex: 0,
      ),
    );
  }
}

Widget buildCard(BuildContext context, Item cardItem) {
  return GestureDetector(
    onTap: () async {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pd(cardItem: cardItem)),
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
              onPageChanged: (index, reason) {},
            ),
            items: cardItem.images.map((image) {
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
                cardItem.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: Center(
              child: Text(
                cardItem.pricing,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Add action here
                  },
                  child: const Text(
                    'Details',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
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
