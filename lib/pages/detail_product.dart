import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

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
              tag: 'image_animation_Double_Iced_Shaken_Latte',
              child: Image(
                image: AssetImage('assets/images/Double_Iced_Shaken_Latte.jpg'),
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          
        ],
      ),
    );
  }
}
