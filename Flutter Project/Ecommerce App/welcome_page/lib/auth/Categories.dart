import 'package:flutter/material.dart';
import 'package:welcome_page/auth/Offers.dart';

class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Page'),
      ),
      body: Center(
        child: Text('This is the destination page.'),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildHeartImageWithText(context, "images/offer1.jpg", "OFF 40%", Colors.brown),
              SizedBox(width: 35), // إضافة مسافة بين الصور
              _buildHeartImageWithText(context, "images/of3.jpg", "OFF 30%", const Color.fromARGB(255, 73, 72, 121)),
              SizedBox(width: 35), // إضافة مسافة بين الصور
              _buildHeartImageWithText(context, "images/offer2.jpg", "OFF 50%", Color.fromARGB(255, 90, 122, 251)),
              SizedBox(width: 35),
              _buildHeartImageWithText(context, "images/of4.jpg", "OFF 50%", Color.fromARGB(255, 90, 122, 251)),
              SizedBox(width: 35), // إضافة مسافة بين الصور
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeartImageWithText(BuildContext context, String imagePath, String text, Color color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Offers()),
        );
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Transform.rotate(
            angle: -0.75,
            child: Image.asset(
              imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 5, 5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 248, 247, 247),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeartShapedContainer extends StatelessWidget {
  final Widget child;

  const HeartShapedContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.75,
      child: Container(
        width: 250,
        height: 320,
        padding: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 60), // مسافة للصورة
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 211, 8, 8),
                shape: BoxShape.circle,
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Heart Shaped Container'),
      ),
      body: Center(
        child: HeartShapedContainer(
          child: Categories(),
        ),
      ),
    ),
  ));
}
