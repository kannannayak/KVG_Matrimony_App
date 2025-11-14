import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Forgot/View/Forgot_changepassword.dart';

import 'package:pinput/pinput.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class OtpVerification_page extends StatefulWidget {
  const OtpVerification_page({Key? key}) : super(key: key);

  @override
  State<OtpVerification_page> createState() => _OtpVerification_pageState();
}

class _OtpVerification_pageState extends State<OtpVerification_page> {
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                height: screenHeight * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.blue[800],
                  image: DecorationImage(
                    image: AssetImage("assets/images/Married.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 0,
            child: Container(
              height: screenHeight * 0.33,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: AppColors.fillcolour,
              ),
              child: Center(
                child: Container(
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          shbox10,
                          Center(
                            child: Text(
                              "OTP Verification",
                              style: GoogleFonts.lexend(
                                color: AppColors.Titletext,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          shbox15,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Pinput(
                                length: 4,
                                keyboardType: TextInputType.number,
                                defaultPinTheme: PinTheme(
                                  width: 55,
                                  height: 55,
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.fillcolour,
                                    borderRadius: BorderRadius.circular(8),
                                    // border: Border.all(color: Patent_Black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shbox15,
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "If You Don't Receive a code ! ",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.Textcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Resend",
                                    style: GoogleFonts.lexend(
                                      color: AppColors.redcolour,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shbox10,
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotChangepassword_page(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.redcolour,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 18,
                                ), // width, height
                              ),
                              child: Text(
                                "Verify",
                                style: GoogleFonts.lexend(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          shbox5,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}









    //  Center(
    //                     child: Text(
    //                       "Forgot password",
    //                       style: GoogleFonts.lexend(
    //                         color: AppColors.Titletext,
    //                         fontWeight: FontWeight.bold,
    //                         fontSize: 25,
    //                       ),
    //                     ),
    //                   ),
    //                   shbox30,
    //                   Text(
    //                     "Phone Number",
    //                     style: GoogleFonts.lexend(
    //                       color: AppColors.Textcolor,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 15,
    //                     ),
    //                   ),
    //                   shbox5,
    //                   TextField(
    //                     decoration: InputDecoration(
    //                       prefix: Text(
    //                         "+91 ",
    //                         style: GoogleFonts.lexend(
    //                           color: AppColors.Black,
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                       ),
    //                     ),
    //                     keyboardType: TextInputType.number,
    //                     // inputFormatters: <TextInputFormatter>[
    //                     //   FilteringTextInputFormatter.digitsOnly
    //                     // ],
    //                   ),

    //                   shbox20,
    //                   Center(
    //                     child: ElevatedButton(
    //                       onPressed: () {},
    //                       style: ElevatedButton.styleFrom(
    //                         backgroundColor: AppColors.redcolour,
    //                         shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(30),
    //                         ),
    //                         padding: const EdgeInsets.symmetric(
    //                           horizontal: 75,
    //                           vertical: 20,
    //                         ), // width, height
    //                       ),
    //                       child: Text(
    //                         "Submit",
    //                         style: GoogleFonts.lexend(
    //                           color: AppColors.white,
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 18,
    //                         ),
    //                       ),
    //                     ),
    //                   ),
