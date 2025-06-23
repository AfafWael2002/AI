import 'package:flutter/material.dart';
import 'package:welcome_page/auth/Order_list.dart';
import 'package:welcome_page/auth/ProductFilterPage.dart';
import 'package:welcome_page/auth/home.dart';
import 'package:welcome_page/auth/my_account.dart';
import 'package:welcome_page/auth/my_cart.dart';

class BottomNavBar extends StatefulWidget {
  final int initialIndex;
  const BottomNavBar({super.key, required this.initialIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        _navigateToRoute(context, '/home', const HomeScreen());
        break;
      case 1:
        _navigateToRoute(context, '/Categories', App2());
        break;
      case 2:
        _navigateToRoute(context, '/Myaccount', const App1());
        break;
      case 3:
        _navigateToRoute(context, '/Mycart', const MyCart());
        break;
      case 4:
        _navigateToRoute(context, '/OrderList', const OrderList());
        break;
    }
  }

  void _navigateToRoute(context, String routeName, Widget screen) {
    final String? currentRouteName = ModalRoute.of(context)?.settings.name;
    bool routeExists = currentRouteName == routeName;

    if (routeExists) {
      Navigator.popUntil(context, ModalRoute.withName(routeName));
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => screen,
            settings: RouteSettings(name: routeName)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: _selectedIndex == 0 ? Colors.blue : Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category_outlined,
            color: _selectedIndex == 1 ? Colors.blue : Colors.black,
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_outlined,
            color: _selectedIndex == 2 ? Colors.blue : Colors.black,
          ),
          label: 'MyAccount',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: _selectedIndex == 3 ? Colors.blue : Colors.black,
          ),
          label: 'MyCart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.attach_money,
            color: _selectedIndex == 4 ? Colors.blue : Colors.black,
          ),
          label: 'OrderList',
        ),
      ],
    );
  }
}