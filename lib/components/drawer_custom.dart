import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  image: DecorationImage(
                      image: AssetImage('assets/logo/Logo_Black.png'),
                      opacity: 0.1,
                      fit: BoxFit.cover)),
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
    );
  }
}
