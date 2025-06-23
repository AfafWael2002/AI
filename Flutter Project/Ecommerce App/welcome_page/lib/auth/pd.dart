import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:welcome_page/auth/dresses.dart';
import 'package:welcome_page/card_provider.dart';

class pd extends StatefulWidget {
  final Item cardItem;


  const pd({Key? key, required this.cardItem}) : super(key: key);

  @override
  State<pd> createState() => _pdState();
}

class _pdState extends State<pd> {
  int _selectedButton = 2;
  int heartsCount = 1;

  void addToCart() {
    CartItem newItem = CartItem(name: 'shert', price: 200, quantity: 1);
    Provider.of<CartProvider>(context, listen: false).addToCart(newItem);
  }

  void _selectButton(int buttonIndex) {
    setState(() {
      _selectedButton = buttonIndex;
    });
  }


  List<double> prices = [2.0, 5.99, 7.88, 8.0, 10.8];
  List<Color> Clrs = [
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.yellow,
    Colors.green,
  ];
  List<String> Size = ['S', 'M', 'L', 'XL', 'XXL'];

  Widget buildButton(String text, int index) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: GestureDetector(
          onTap: () {
            _selectButton(index);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              color: _selectedButton == index ? Colors.blue : Colors.white,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 10, 10),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                onPageChanged: (index, _) {
                  setState(() {});
                },
              ),
              items: widget.cardItem.images.map((image) {
                return Builder(
                  builder: (context) {
                    return Image.asset(
                      image,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    widget.cardItem.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'price:  ${widget.cardItem.pricing}',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: Row(children: [
                Text(
                  'product Title',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "This is more describtion of the prodect you can define about it in my project is caled e_commerce.this lenghy system analysis and design ",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8)),
            Row(
              children: [
                Text(
                  "Available Size:",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: List.generate(
                    Size.length,
                    (index) => Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 8)
                        ],
                      ),
                      child: Text(
                        Size[index],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Available Color:",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: List.generate(
                    Clrs.length,
                    (index) => Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Clrs[index],
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8)
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _selectButton(1);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            _selectedButton == 1 ? Colors.blue : Colors.white,
                      ),
                      child: const Text(
                        'RESELL',
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _selectButton(2);
                        addToCart();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            _selectedButton == 2 ? Colors.blue : Colors.white,
                      ),
                      child: const Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Color.fromARGB(255, 11, 11, 11),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
