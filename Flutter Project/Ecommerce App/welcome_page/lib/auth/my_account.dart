import 'package:flutter/material.dart';
import 'package:welcome_page/auth/Order_list.dart';
import 'package:welcome_page/auth/ProductFilterPage.dart';
import 'package:welcome_page/auth/custom_scaffold.dart';
import 'package:welcome_page/auth/home.dart';
import 'package:welcome_page/auth/my_cart.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.blue[700]),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CS Students',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'CS_Students@gmail.com ',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'myaccount',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const ListOption(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.blue,
                ),
                title: 'my Info',
                route: '/info',
              ),
              const ListOption(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.blue,
                ),
                title: 'Home',
                route: '/home',
              ),
              const ListOption(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.blue,
                ),
                title: 'MyCart',
                route: '/MyCart',
              ),
              const ListOption(
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.blue,
                ),
                title: 'Categories',
                route: '/Categories',
              ),
              const ListOption(
                icon: Icon(
                  Icons.money,
                  color: Colors.blue,
                ),
                title: 'orders',
                route: '/Orderlist',
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'settings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const ListOption(
                icon: Icon(
                  Icons.language_outlined,
                  color: Colors.blue,
                ),
                title: 'language',
                route: '/language',
              ),
            ],
          ),
        ),
      ),
      showBottomNavBar: true,
      initialIndex: 2,
    );
  }
}

class ListOption extends StatelessWidget {
  final Icon icon;
  final String title;
  final String route;

  const ListOption(
      {Key? key, required this.icon, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 16),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class App1 extends StatelessWidget {
  const App1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAccount(), // Use MyAccount as the home page
      routes: {
        '/home': (context) => HomeScreen(),
        '/MyCart': (context) => MyCart(),
        '/Categories': (context) => ProductFilterPage(),
        '/Orderlist': (context) => OrderList(),
        //'/language': (context) => LanguageScreen(),
      },
    );
  }
}
