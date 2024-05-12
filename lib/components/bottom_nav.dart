import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required this.selectedIndex, required this.changePage});

  final int selectedIndex;
  final Function(int)? changePage;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      elevation: 0,
        onTap: widget.changePage,
        useLegacyColorScheme: false,
        currentIndex: widget.selectedIndex,
        selectedItemColor: Color(0xff006041),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
        ],
      );
  }
}