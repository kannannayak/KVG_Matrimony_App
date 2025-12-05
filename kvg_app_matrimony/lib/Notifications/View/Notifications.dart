import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/helper/colors.dart';

class Notifications_page extends StatefulWidget {
  const Notifications_page({Key? key}) : super(key: key);

  @override
  State<Notifications_page> createState() => _Notifications_pageState();
}

class _Notifications_pageState extends State<Notifications_page> {
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      backgroundColor: AppColors.fillcolour,
      body:
      
       Column(
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
                      "Notifications",
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
          shbox10,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shbox5,
                  Center(
                    child: Text(
                      "Kvg Matrimony",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  shbox10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      color: Color(0xffE9EDEE),
                    ),
                  ),
                  shbox10,
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Platform for Patients to access medical consultation, specifically follow up care, with availability of hybrid Physical-Online combination",
                      style: GoogleFonts.lexend(
                        color: AppColors.Black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  shbox20,
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "8 Jan 12:07 Pm",
                          style: GoogleFonts.lexend(
                            color: AppColors.Black.withOpacity(0.70),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  shbox5,
                ],
              ),
            ),
          ),
        ],
      ),
    
    );
  }
}
