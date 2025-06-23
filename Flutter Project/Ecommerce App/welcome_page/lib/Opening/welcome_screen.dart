import 'package:flutter/material.dart';
import 'package:welcome_page/Authentication/begin.dart';
import 'package:welcome_page/Authentication/sign_in.dart';
import 'package:welcome_page/auth/home.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _pageController = PageController();
  // ignore: unused_field
  int _currentPage = 0;

  List<WelcomeSlider> welcomeSlider = [
    WelcomeSlider(
        title: "Shop All You Want !",
        description: "Select from a wide range of variety",
        image: 'images/shopping.png'),
    WelcomeSlider(
        title: "Save Time, Order online.",
        description: "Convenience at Your fingertips",
        image: 'images/ketty.png'),
    WelcomeSlider(
        title: "The Greatest Shop Journey",
        description: "Make a Practical Choice with one voice!",
        image: 'images/pages.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 130, 166, 212),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      //navigate to home screen
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Begin()));
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 3,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      final item = welcomeSlider[index];
                      return Column(
                        children: [
                          Image.asset(
                            item.image,
                            height: 250,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            item.title,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    color: Colors.pink[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            item.description,
                            style: const TextStyle(
                              color: Colors.pink,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                    children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 10,
                      width: _currentPage == index ? 40 : 10,
                      decoration: BoxDecoration(
                          color: _currentPage == index
                              ? Colors.pink[700]
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  );
                }))
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink[700],
          onPressed: () {
            if (_currentPage < welcomeSlider.length - 1) {
              _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut);
            } else {
              //navigate to homescreen
               Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
            }
          },
          child: _currentPage != welcomeSlider.length - 1
              ? const Icon(Icons.arrow_forward)
              : const Icon(Icons.done),
        ),
      ),
    );
  }
}

class WelcomeSlider {
  final String title;
  final String description;
  final String image;
  WelcomeSlider(
      {required this.title, required this.description, required this.image});
}
