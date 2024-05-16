import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/models/cart.dart';
import 'package:fore_coffe_shop/models/coffe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartTile extends StatefulWidget {
  final Coffe coffe;
  const CartTile({super.key, required this.coffe});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  bool wannaDelete = false;

  void removeCoffetoCart() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xff006041),
            title: Text(
              "You wanna remove this item, are you sure?",
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "No, don't delete it",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<Cart>(context, listen: false)
                      .removeCoffetoCart(widget.coffe);

                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Yes, sure",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 2),
                spreadRadius: 2,
                blurRadius: 2)
          ]),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(widget.coffe.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          widget.coffe.name,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.coffe.category,
          style: GoogleFonts.poppins(
            fontSize: 10,
          ),
        ),
        trailing: IconButton(
            onPressed: () {
              removeCoffetoCart();
            },
            icon: Icon(
              Icons.delete,
              color: Colors.black26,
            )),
      ),
    );
  }
}
