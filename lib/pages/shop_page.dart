import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/models/cart.dart';
import 'package:fore_coffe_shop/models/coffe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/coffe_tile.dart';
import '../components/coffe_tile_landscape.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
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
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
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

              // List Item Americano
              Text(
                "Americano Lovers 🔥",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 310,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.getCoffeList().length,
                  itemBuilder: (BuildContext context, index) {
                    Coffe coffe = value.getCoffeList()[index];

                    // Display Coffe if that coffe is Americano
                    if (coffe.category != "Americano") {
                      return Container();
                    }
                    return CoffeTile(
                      coffe: coffe,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // List Item Americano
              Text(
                "Special offer🔥",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),

              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 600,
                child: ListView.builder(
                  itemCount: value.getCoffeList().length,
                  itemBuilder: (BuildContext context, index) {
                    Coffe coffe = value.getCoffeList()[index];

                    if (coffe.category != "Coffe") {
                      return Container();
                    }
                    return CoffeTileLandscape(coffe: coffe);
                  },
                ),
              ),

              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

