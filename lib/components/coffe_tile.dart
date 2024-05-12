import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/pages/detail_product.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeTile extends StatelessWidget {
  const CoffeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailProduct();
            },
          ),
        );
      },
      child: Hero(
        tag: 'image_animation_Double_Iced_Shaken_Latte',
        child: Container(
          margin: EdgeInsets.only(right: 10, bottom: 10),
          padding: EdgeInsets.all(10),
          width: 180,
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
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/Double_Iced_Shaken_Latte.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
        
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          // Product Title
                          Text(
                            'Double Iced Shaken Latte',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
        
                          SizedBox(
                            height: 2,
                          ),
        
                          // Description
                          Text(
                            'Double Iced Shaken Latte',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Product Price
                          Row(
                            children: [
                              Text(
                                "Rp ",
                                style: GoogleFonts.poppins(
                                    fontSize: 10, color: Color(0xFFA34B31)),
                              ),
                              Text(
                                "33.000,-",
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
                                borderRadius: BorderRadius.circular(10)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
