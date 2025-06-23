import 'package:flutter/material.dart';
import 'package:welcome_page/Authentication/Signup.dart';
import 'package:welcome_page/Authentication/sign_in.dart';

class Begin extends StatefulWidget {
  const Begin({super.key});

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(112, 181, 196, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/img_shop.jpg'),
            const SizedBox(
              height: 50,
            ),
            TextButton(
                style: const ButtonStyle(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 197, 31, 59)),
                    minimumSize: MaterialStatePropertyAll(Size(150.0, 60.0))),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Color.fromARGB(255, 83, 194, 228), fontSize: 30),
                )),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                style: const ButtonStyle(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 197, 31, 59)),
                    minimumSize: MaterialStatePropertyAll(Size(150.0, 60.0))),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Color.fromARGB(255, 83, 194, 228), fontSize: 30),
                )),
          ],
        ),
      ),
    );
  }
}
