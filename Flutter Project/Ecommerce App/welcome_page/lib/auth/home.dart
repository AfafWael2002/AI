import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:welcome_page/auth/Categories.dart';
import 'package:welcome_page/auth/custom_scaffold.dart';
import 'package:welcome_page/auth/productDetail.dart';
import 'package:welcome_page/card_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  List<CardItem> cardItems = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    cardItems = [
      CardItem(
         title: "dress_13", pricing: "30 EGP", images: [
        'images/d_4.jpg',
        'images/d_5.jpg',
        'images/d_3.jpg',]),
      CardItem(
          title: "Bages",
          pricing: "20 EGP",
          images: ['images/p4.jpg', 'images/p2.jpg', 'images/p3.jpg', 'images/p10.jpg']),
      CardItem(
          title: "gh",
          pricing: "300 EGP",
          images: ['images/6.jpg', 'images/2.jpg', 'images/4.jpg', 'images/8.jpg']),
      CardItem(
          title: "accessory",
          pricing: "40 EGP",
          images: ['images/A12.jpg', 'images/A1.jpg', 'images/A2.jpg', 'images/A3.jpg']),
      CardItem(
          title: "shoses",
          pricing: "50 EGP",
          images: ['images/sh1.jpg', 'images/sh5.jpg', 'images/sh9.jpg', 'images/sh6.jpg']),
      CardItem(
          title: "T_shirt",
          pricing: "50 EGP",
          images: ['images/t6.jpg', 'images/t7.jpg', 'images/t9.jpg', 'images/t12.jpg']),
      CardItem(
          title: "T_shirt3",
          pricing: "70EGP",
          images: ['images/9.jpg', 'images/3.jpg', 'images/9.jpg', 'images/2.jpg']),
      CardItem(
          title: "T_shirt4",
          pricing: "90 EGP",
          images: ['images/2.jpg', 'images/7.jpg', 'images/6.jpg', 'images/3.jpg']),
      CardItem(
          title: "T_shirt5",
          pricing: "30 EGP ",
          images: ['images/4.jpg', 'images/8.jpg', 'images/6.jpg', 'images/5.jpg']),
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
                  color:Color.fromARGB(255, 90, 122, 251),
                  padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color:Color.fromARGB(255, 90, 122, 251),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 19, 19, 19).withOpacity(0.5),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        
                      )
                    ],
                  ),
                ),
                Container(
                  color:Color.fromARGB(255, 90, 122, 251),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "What do you want to buy?",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 250,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Search Here",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            setState(() {
                              searchText = value;
                            });
                          },
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.filter_list),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 112,
                    width: 600,
                     padding: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color.fromARGB(255, 90, 122, 251)
                     ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Categories(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                GridView.count(
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: cardItems
                      .where((cardItem) =>
                          cardItem.title.toLowerCase().contains(searchText.toLowerCase()))
                      .map((cardItem) {
                    return buildCard(cardItem);
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
Widget buildCard(CardItem cardItem) {
  return GestureDetector(
    onTap: () async {
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductDetail(cardItem: cardItem)),
      );
    },
      child: Card(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: true,
                  initialPage: 0,
                  autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myS = index;
                    });
                  }),
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
            AnimatedSmoothIndicator(
              activeIndex: myS,
              count: cardItems.length,
              effect: const WormEffect(
                  dotHeight: 11,
                  dotWidth: 12,
                  spacing: 5,
                  dotColor: Color.fromARGB(255, 218, 214, 214),
                  activeDotColor: Colors.blue,
                  paintStyle: PaintingStyle.fill),
            ),
            ListTile(
              title: Text(
                cardItem.title,
                style: const TextStyle(color: Colors.black),
              ),
              subtitle: Text(cardItem.pricing),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem {
  final String title;
  final String pricing;
  final List<String> images;

  CardItem({
    required this.title,
    required this.pricing,
    required this.images,
  });

  void addToCart(CartItem newItem) {}
}
