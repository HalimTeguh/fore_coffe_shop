import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/components/coffe_tile.dart';
import 'package:fore_coffe_shop/models/cart.dart';
import 'package:fore_coffe_shop/models/coffe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10, bottom: 10),
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2, 2),
                            spreadRadius: 1,
                            blurRadius: 2,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          // Product Image
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(coffe.imagePath),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          // Colum for Info Item
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Product Title
                                Text(
                                  coffe.name,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),

                                // Product Description
                                Text(
                                  '${coffe.description}...',
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                  ),
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                
                                //  Row Price and Button Add to Cart
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Product Price
                                    Row(
                                      children: [
                                        Text(
                                          "Rp ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              color: Color(0xFFA34B31)),
                                        ),
                                        Text(
                                          "${coffe.price},-",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Color(0xFFA34B31),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),

                                    // Button add to Cart
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Color(0xff006041),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: IconButton(
                                        color: Colors.white,
                                        iconSize: 20,
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
