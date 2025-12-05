import 'package:flutter/material.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      body: 
      
      
      
      
      Container(
        height: screenHeight * 0.14,
        decoration: BoxDecoration(
          color: const Color(0xFFE22B4B),
          // borderRadius: const BorderRadius.only(
          //   bottomLeft: Radius.circular(30),
          //   bottomRight: Radius.circular(30),
          // ),
        ),
        child: Stack(
          children: [
            // Big circle (left)
            Positioned(
              left: -10,
              top: -10,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red.shade700.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Mid circle (center right)
            Positioned(
              right: 70,
              top: 40,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red.shade300.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Small circle (top right)
            Positioned(
              right: 20,
              top: 25,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.red.shade200.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Top small circle (center)
            Positioned(
              top: -15,
              left: 150,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red.shade900.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // AppBar Title
            // Positioned(
            //   left: 20,
            //   bottom: 20,
            //   child: Text(
            //     "My AppBar",
            //     style: const TextStyle(
            //       color: Colors.white,
            //       fontSize: 22,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "policy and terms",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    
    
    
    
    
    );
  }
}
