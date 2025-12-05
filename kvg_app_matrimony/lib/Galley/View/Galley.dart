import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Matches/View/Matches.dart';

class Galley_page extends StatefulWidget {
  const Galley_page({Key? key}) : super(key: key);

  @override
  State<Galley_page> createState() => _Galley_pageState();
}

class _Galley_pageState extends State<Galley_page> {
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      backgroundColor: AppColors.fillcolour,

      body: Column(
        children: [

          Container(
            height: screenHeight * 0.12,
            decoration: BoxDecoration(
              color: const Color(0xFFE22B4B),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
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

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Galley",
                      style: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

         
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: 100, // 🔥 Show 100 images
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 800
                    ? 5
                    : // Tablet
                      MediaQuery.of(context).size.width > 500
                    ? 3
                    : 4, // Mobile
                mainAxisSpacing: 8,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Matches_page()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.Black, width: 3),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Image.asset(
                        "assets/images/5.jpeg", // You can change images dynamically if needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
