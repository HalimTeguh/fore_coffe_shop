import 'package:flutter/material.dart';

import '../models/coffe.dart';

class DetailProduct extends StatefulWidget {
  final Coffe coffe;
  const DetailProduct({super.key, required this.coffe});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Hero(
            tag: widget.coffe.imagePath,
            child: Image(
              image: AssetImage(widget.coffe.imagePath),
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
