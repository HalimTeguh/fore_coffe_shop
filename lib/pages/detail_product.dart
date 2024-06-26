import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/components/FormaterInteger.dart';
import 'package:fore_coffe_shop/models/cart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/coffe.dart';

class DetailProduct extends StatefulWidget {
  final Coffe coffe;
  const DetailProduct({super.key, required this.coffe});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  FormaterInteger format = FormaterInteger();

  int selectedSizeCoffe = 1;
  List sizeCoffe = ['Small', 'Medium', 'Large'];
  bool isFavorite = false;

  double animatedShadowHeight = 200;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        animatedShadowHeight += 300;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String priceFormat = format.priceFormat(widget.coffe.price);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Column untuk menempatkan gambar di bagian atas dan kontainer di bagian bawah
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Bagian atas: Gambar (dalam Hero animation)
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // Image Product
                      Hero(
                        tag: widget.coffe.imagePath,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            child: Image(
                              image: AssetImage(widget.coffe.imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      // Custom AppBar
                      Container(
                        margin: EdgeInsets.only(left: 25, right: 25, top: 40),
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Button Back
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(2, 2),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Shadow Image
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
                height: animatedShadowHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, -2),
                      spreadRadius: 100,
                      blurRadius: 100,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),

              // Product Information
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Name Product
                        Container(
                          width: 250,
                          child: Text(
                            widget.coffe.name,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),

                        // Rating Product
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFA34B31),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.7",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Detail Product Container
                  Container(
                    height: 500,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Category Product
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Icon
                                  Icon(
                                    Icons.coffee_rounded,
                                    color: Color(0xFFA34B31),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),

                                  // Text
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(
                                      widget.coffe.category,
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 30,
                            ),

                            // Description of Coffe
                            Text(
                              "About",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            // Description
                            Text(
                              widget.coffe.description,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),

                        // Button Add to Cart
                        GestureDetector(
                          onTap: () {
                            Provider.of<Cart>(context, listen: false)
                                    .addCoffetoCart(widget.coffe);

                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: Color(0xff006041),
                                    title: Text(
                                      "Successfully added!",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    content: Text(
                                      "Check your cart",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Color(0xff006041),
                                borderRadius: BorderRadius.circular(40)),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      "Add to cart",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white, //color of divider
                                    width: 10, //width space of divider
                                    thickness: 3, //thickness of divier line
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Rp",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "$priceFormat,-",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
