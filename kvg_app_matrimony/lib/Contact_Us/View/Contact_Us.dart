import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/helper/colors.dart';

class ContactUs_page extends StatefulWidget {
  const ContactUs_page({Key? key}) : super(key: key);

  @override
  State<ContactUs_page> createState() => _ContactUs_pageState();
}

class _ContactUs_pageState extends State<ContactUs_page> {
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return SafeArea(
      child: Scaffold(
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
                        "Contact Us",
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
            shbox20,
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: AppColors.redcolour1,
                    border: Border.all(width: 2, color: AppColors.Black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        shbox5,
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Name",
                            style: GoogleFonts.lexend(
                              color: AppColors.Textcolor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        shbox5,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.white,
                              focusColor: AppColors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.white,
                                  width: 2.0,
                                ),
                                // borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Enter name',
                              hintStyle: GoogleFonts.lexend(
                                color: AppColors.Textcolor.withOpacity(0.45),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




