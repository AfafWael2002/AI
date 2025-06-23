import 'package:flutter/material.dart';

class Offer {
  final String title;
  final String description;
  final List<String> imageUrls; // List for image URLs
  final double oldPrice; // Old price
  final double newPrice; // New price

  Offer({
    required this.title,
    required this.description,
    required this.imageUrls,
    required this.oldPrice,
    required this.newPrice,
  });
}

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List<Offer> offers = [
    Offer(
      title: "Special Offer 1",
      description: "Description for Special Offer 1. Lorem ipsum dolor sit amet, .",
      imageUrls: [
        "images/d_5.jpg",
        "https://example.com/image1_2.jpg",
        // Add more image URLs as needed
      ],
      oldPrice: 100.0,
      newPrice: 80.0,
    ),
    Offer(
      title: "Special Offer 2",
      description: "Description for Special Offer 2. Nulla facilisi. Vestibulum ante .",
      imageUrls: [
        "images/p4.jpg",
        // "https://example.com/image2_2.jpg",
        // Add more image URLs as needed
      ],
      oldPrice: 80.0,
      newPrice: 60.0,
    ),
    // Add more offers as needed
    Offer(
      title: "Special Offer 3",
      description: "Description for Special Offer 3. Phasellus aliquam eros at sapien rhoncus, at facilisis metus condimentum..",
      imageUrls: [
        "images/d_3.jpg",
        "https://example.com/image3_2.jpg",
        // Add more image URLs as needed
      ],
      oldPrice: 120.0,
      newPrice: 90.0,
    ),
    Offer(
      title: "Special Offer 4",
      description: "Description for Special Offer 4. Duis lobortis lacus eget metus efficitur, eget interdum lorem tempor. ",
      imageUrls: [
        "images/sh1.jpg",
        "https://example.com/image4_2.jpg",
        // Add more image URLs as needed
      ],
      oldPrice: 150.0,
      newPrice: 120.0,
    ),
    Offer(
      title: "Special Offer 5",
      description: "Description for Special Offer 5. Suspendisse sit amet sapien id diam tempus placerat. Vivamus ac enim ultricies, dapibus ipsum non, facilisis eros.",
      imageUrls: [
        "images/d_9.jpg",
        // Add more image URLs as needed
      ],
      oldPrice: 90.0,
      newPrice: 70.0,
    ),
    // Add more offers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers and Discounts'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: offers.map((offer) {
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display only the first image
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        offer.imageUrls.first, // Displaying the first image only
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offer.title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            offer.description,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                '${offer.oldPrice} EGP',
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                '${offer.newPrice} EGP',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

