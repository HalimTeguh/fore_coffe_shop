import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/components/coffe_tile.dart';
import 'package:fore_coffe_shop/models/coffe.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            // Greetings
            Text(
              "Good morning, Halim",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 20,
            ),

            // Search
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: TextField(
                cursorColor: Color(0xff006041),
                decoration: InputDecoration(
                  icon: Icon(Icons.search_outlined),
                  hintText: "Search Coffe ...",
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // List Item
            Text(
              "Special Offer 🔥",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, index) {
                  Coffe coffe = Coffe(
                    name: 'Double Iced Shaken Latte',
                    price: 33000,
                    description:
                        'Paduan klasik 2 shot espresso dengan susu dan krim',
                    imagePath: 'assets/images/Double_Iced_Shaken_Latte.jpg',
                  );
                  return CoffeTile(
                    coffe: coffe,
                  );
                },
              ),
            ),

            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
