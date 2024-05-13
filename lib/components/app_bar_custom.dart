import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBarCustom() {
  return AppBar(
    toolbarHeight: 80,
    leadingWidth: 0,
    leading: SizedBox(),
    backgroundColor: Color.fromARGB(255, 247, 247, 247),
    surfaceTintColor: Color.fromARGB(255, 247, 247, 247),
    elevation: 0,
    shadowColor: Colors.black,
    scrolledUnderElevation: 15,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile image
          Builder(builder: (context) {
            return GestureDetector(
              onTap: Scaffold.of(context).openDrawer,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black38),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            );
          }),

          Row(
            children: [
              // Icons location
              Icon(Icons.location_on, color: Color(0xff006041)),
              SizedBox(
                width: 6,
              ),

              // Text Location
              Text(
                "Kota Malang, Indonesia",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),

          // Icon notify
          Icon(Icons.notifications_outlined)
        ],
      ),
    ),
  );
}
