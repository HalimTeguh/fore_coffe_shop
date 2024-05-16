
import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/components/cart_tile.dart';
import 'package:fore_coffe_shop/models/cart.dart';
import 'package:fore_coffe_shop/models/coffe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (value.getUserCart().length > 0) ? "My Cart (${value.getUserCart().length})" : "My Cart",
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Coffe coffe = value.getUserCart()[index];
            
                return CartTile(coffe: coffe);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
