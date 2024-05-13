import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/components/app_bar_custom.dart';
import 'package:fore_coffe_shop/components/bottom_nav.dart';
import 'package:fore_coffe_shop/components/drawer_custom.dart';
import 'package:fore_coffe_shop/pages/cart_page.dart';
import 'package:fore_coffe_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;

  final List _page = [const ShopPage(), const CartPage()];

  void changePage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: appBarCustom(),
      drawer: DrawerCustom(),
      bottomNavigationBar: BottomNav(selectedIndex: _selectedPageIndex, changePage: changePage),
      body: _page[_selectedPageIndex],
    );
  }

}

