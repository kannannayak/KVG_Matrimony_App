import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class PoliciesTerms_page extends StatefulWidget {
  const PoliciesTerms_page({Key? key}) : super(key: key);

  @override
  State<PoliciesTerms_page> createState() => _PoliciesTerms_pageState();
}

class _PoliciesTerms_pageState extends State<PoliciesTerms_page> {
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
                      "Privacy Policy",
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

          shbox3,

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Information\n\n"
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic.\n\n"
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic.\n\n"
                      "Use of your personal information\n\n"
                      "Lorem Ipsum is simply dummy text of the printing and typesetting Industry. "
                      "Lorem ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
                      "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
                      "like Aldus PageMaker including versions of Lorem ipsum.\n\n"
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
                      "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
                      "like Aldus PageMaker including versions of Lorem Ipsum.\n\n"
                      "Transfer of Information\n\n"
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset "
                      "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software "
                      "like Aldus PageMaker including versions of Lorem Ipsum.\n\n"
                      "Your Rights\n\n"
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the leap into electronic typesetting, "
                      "remaining essentially unchanged.",
                      style: GoogleFonts.lexend(
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    shbox10,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
