import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/components/FormaterInteger.dart';
import 'package:fore_coffe_shop/pages/detail_product.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/coffe.dart';

class CoffeTileLandscape extends StatelessWidget {
  final Coffe coffe;
  final FormaterInteger formatter = FormaterInteger();
  CoffeTileLandscape({
    super.key,
    required this.coffe,
  });


  @override
  Widget build(BuildContext context) {
    String priceFormat = formatter.priceFormat(coffe.price);

    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailProduct(coffe: coffe,);
            },
          ),
        );
      },
      child: Container(
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
            Hero(
              tag: coffe.imagePath,
              child: AspectRatio(
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
                            "$priceFormat,-",
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
      ),
    );
  }
}
