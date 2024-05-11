import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/pages/cart_page.dart';
import 'package:fore_coffe_shop/pages/shop_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;

  List _page = [const ShopPage(), const CartPage()];

  void changePage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 0,
        leading: SizedBox(),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile image
              Builder(builder: (context) {
                return GestureDetector(
                  onTap: Scaffold.of(context).openDrawer,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black38),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                );
              }),

              Row(
                children: [
                  // Icons location
                  Icon(Icons.location_on, color: Color(0xff006041)),
                  SizedBox(
                    width: 10,
                  ),

                  // Text Location
                  Text(
                    "Kota Malang, Indonesia",
                    style: GoogleFonts.poppins(fontSize: 12),
                  )
                ],
              ),

              // Icon notify
              Icon(Icons.notifications_outlined)
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff006041),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.translate(
              offset: Offset(-100, 100),
              child: Container(
                width: 900,
                height: 700,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/logo/Logo_Black.png'), opacity: 0.1, fit: BoxFit.cover )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logo/Logo_white.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Home',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Cart',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Divider(
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Log out',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changePage,
        currentIndex: _selectedPageIndex,
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
      ),
      body: _page[_selectedPageIndex],
    );
  }
}
