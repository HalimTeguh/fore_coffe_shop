import 'dart:math';

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double boxSize = 100;
  int tap = 0;
  int doubeTap = 0;
  int longPress = 0;
  double _top = 0;
  double _left = 0;

  // if item is tapped
  void addTap(){
    setState(() {
      tap++;
    });
  }

  // if item is double tapped
  void addDoubleTap(){
    setState(() {
      doubeTap++;
    });
  }

  // if item is long pressed
  void addLongpressTap(){
    setState(() {
      longPress++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: _top,
              left: _left,
              child: GestureDetector(
                onTap: addTap,
                onDoubleTap: addDoubleTap,
                onLongPress: addLongpressTap,
                onPanUpdate: (details){
                  setState(() {
                  _top = max(0, _top + details.delta.dy);
                  _left = max(0, _left + details.delta.dx);
                    
                  });
                },
                child: Container(
                  height: boxSize,
                  width: boxSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green
                  ),
                ),
              ),
            ),
        
            Container(
              padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tap: $tap"),
                  Text("Double Tap: $doubeTap"),
                  Text("Long Tap: $longPress"),
        
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}