import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  final TextEditingController _remarksController = TextEditingController();

  void FeedBack1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;

        return AlertDialog(
          backgroundColor: AppColors.white,
          content: Container(
            width: screenWidth * 0.1,
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Prevents unnecessary height usage
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Thank you for your",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.Black,
                  ),
                ),
                Text(
                  "valuable feedback",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.Black,
                  ),
                ),
                shbox5,
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Container(
                      width: screenWidth * 0.2,
                      height: 40, // Ensures a perfect circle
                      decoration: BoxDecoration(
                        color: AppColors.redcolour1,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: AppColors.Black, width: 1),
                      ),
                      alignment: Alignment
                          .center, // Centers the text inside the container
                      child: Text(
                        "OK",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white, // Adjust text color if needed
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    setScreenSize(context);

    return Scaffold(
      backgroundColor: AppColors.fillcolour,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Feedback",
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Please rate your experience with us", // "Share your experience in scaling",
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Black,
                ),
              ),
            ),
            shbox5,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemSize: 50,
                itemBuilder: (context, _) =>
                    Icon(Icons.star, color: Colors.amber),
                onRatingUpdate: (rating) {
                  // feebackcontroller.rateing.value.text = rating.toString();
                  // print(
                  //     "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx${feebackcontroller.rateing.value.text}");
                },
              ),
            ),
            shbox10,
            Center(
              child: Container(
                // height: screenHeight * 0.65,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.redcolour1,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    shbox10,
                    Text(
                      "“Better Care Begins with Your Feedback”",
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                        fontSize: 15,
                      ),
                    ),
                    shbox10,
                    Container(
                      height: screenHeight * 0.5,
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Stack(
                        children: [
                          shbox3,
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 30,
                            ),
                            child: TextField(
                              controller: _remarksController,
                              maxLines:
                                  8, // Allows users to enter multiple lines
                              maxLength: 200, // Restricts input to 200 words
                              decoration: InputDecoration(
                                hintText: "TYPE here.....(max. 200 words )",

                                hintStyle: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: AppColors.Textcolor.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  height: 1.2, // Adjusts line height
                                  letterSpacing:
                                      0.5, // Adds spacing to prevent overflow
                                ),
                                border: InputBorder
                                    .none, // Removes the default border
                                counterText: "", // Hides character counter
                              ),
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: AppColors.Black,
                                fontWeight: FontWeight.w500,
                              ),
                              onChanged: (_) {
                                setState(() {});
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Image.asset(
                                "assets/images/Feedbackline.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    shbox15,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "${200 - _remarksController.text.length}/200",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  ),
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                ),
                                onPressed: () {
                                  FeedBack1(context);
                                },

                                child: Text(
                                  "Send",
                                  style: GoogleFonts.lexend(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff02AEB5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    shbox10,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
