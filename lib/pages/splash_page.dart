import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff006041),
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(-150, -150),
            child: Container(
              width: 400,
              height: 800,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo/Logo_Black.png'),
                    fit: BoxFit.cover,
                    opacity: 0.1),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo/Logo_white.png'),
                        fit: BoxFit.cover),
                  ),
                ),

                // Text CTA
                Text(
                  'Grind The  Essentials',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Text(
                  'Made with Indonesia’s Finest Beans for your everyday modern coffee experience',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: 100,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context){
                      return HomePage();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.white),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff006041),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )

                // Button Get Started
              ],
            ),
          ),
        ],
      ),
    );
  }
}
