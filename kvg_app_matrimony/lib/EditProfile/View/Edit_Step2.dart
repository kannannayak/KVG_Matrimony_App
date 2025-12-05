import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step3.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class Edit_Step2_page extends StatefulWidget {
  const Edit_Step2_page({Key? key}) : super(key: key);

  @override
  State<Edit_Step2_page> createState() => Edit_Step2_pageState();
}

class Edit_Step2_pageState extends State<Edit_Step2_page> {
  int _BrotherMarried = 0;
  int _BrotherUnmarried = 0;
  int _SisterMarried = 0;
  int _SisterUnmarried = 0;
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return Scaffold(
      backgroundColor: AppColors.fillcolour,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: CustomPaint(
                      size: const Size(900, 0),
                      painter: ArcPainter(),
                    ),
                  ),
                  Column(
                    children: [
                      shbox35,
                      Center(
                        child: Text(
                          "2/4",
                          style: GoogleFonts.lexend(
                            color: AppColors.Titletext,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Center(
                          child: Text(
                            "Create account",
                            style: GoogleFonts.lexend(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 160, right: 25, left: 25),
              child: Container(
                // height: screenHeight * 0.05,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Father name",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    shbox5,
                    TextField(
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
                    shbox20,
                    Text(
                      "Mother name",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    shbox5,
                    TextField(
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
                        hintText: 'Enter Phone number',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Text(
                      "Aadhar card address",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    shbox5,
                    SizedBox(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.top,
                        maxLength: 700,
                        maxLines: null,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.white,
                          focusColor: AppColors.white,
                          contentPadding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                            bottom: 15,
                          ),

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
                          hintText: 'Typing...',
                          hintStyle: GoogleFonts.lexend(
                            color: AppColors.Textcolor.withOpacity(0.45),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    shbox20,
                    Text(
                      "Expectation",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    shbox5,

                    TextField(
                      textAlignVertical: TextAlignVertical.top,
                      maxLength: 1000,
                      maxLines: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.white,
                        focusColor: AppColors.white,
                        contentPadding: const EdgeInsets.only(
                          top: 15,
                          left: 20,
                          right: 20,
                          bottom: 15,
                        ),

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
                        hintText: 'Typing...',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    shbox20,

                    Text(
                      "Sibling Information",
                      style: GoogleFonts.lexend(
                        color: AppColors.redcolour,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    shbox10,
                    Center(
                      child: Text(
                        "Brother(s)",
                        style: GoogleFonts.lexend(
                          color: AppColors.Textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Married",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.Textcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _BrotherMarried++;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _BrotherMarried.toString(),
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_BrotherMarried > 0) {
                                                _BrotherMarried--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Unmarried",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.Textcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _BrotherUnmarried++;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _BrotherUnmarried.toString(),
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_BrotherUnmarried > 0) {
                                                _BrotherUnmarried--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    shbox20,
                    Center(
                      child: Text(
                        "Sister(s)",
                        style: GoogleFonts.lexend(
                          color: AppColors.Textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Married",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.Textcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _SisterMarried++;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _SisterMarried.toString(),
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_SisterMarried > 0) {
                                                _SisterMarried--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Unmarried",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.Textcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.35,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    border: Border.all(
                                      width: 2,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _SisterUnmarried++;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          _SisterUnmarried.toString(),
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_SisterUnmarried > 0) {
                                                _SisterUnmarried--;
                                              }
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.Textcolor,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    //   height: screenHeight * 0.06,
                    //   width: screenWidth * 0.35,
                    //   decoration: BoxDecoration(
                    //     color: AppColors.white,
                    //     borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     border: Border.all(width: 2, color: AppColors.Black),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(right: 10, left: 10),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //           height: 30,
                    //           width: 30,
                    //           decoration: BoxDecoration(
                    //             color: AppColors.Textcolor,
                    //             borderRadius: BorderRadius.all(
                    //               Radius.circular(5),
                    //             ),
                    //           ),
                    //           child: Center(
                    //             child: Icon(
                    //               Icons.add,
                    //               size: 20,
                    //               color: AppColors.white,
                    //             ),
                    //           ),
                    //         ),
                    //         Text(
                    //           "0",
                    //           style: GoogleFonts.lexend(
                    //             color: AppColors.Textcolor,
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 16,
                    //           ),
                    //         ),
                    //         Container(
                    //           height: 30,
                    //           width: 30,
                    //           decoration: BoxDecoration(
                    //             color: AppColors.Textcolor,
                    //             borderRadius: BorderRadius.all(
                    //               Radius.circular(5),
                    //             ),
                    //           ),
                    //           child: Center(
                    //             child: Icon(
                    //               Icons.remove,
                    //               size: 20,
                    //               color: AppColors.white,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    shbox20,

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rasi",
                                style: GoogleFonts.lexend(
                                  color: AppColors.Textcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              shbox5,
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  focusColor: AppColors.white,
                                  suffixIcon: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 30,
                                    ),
                                    // Icon(
                                    //   Icons.calendar_month_rounded,
                                    //   size: 30, // Reduced size for better fit
                                    // ),
                                  ),
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
                                  ),
                                  hintText: 'Select',
                                  hintStyle: GoogleFonts.lexend(
                                    color: AppColors.Textcolor.withOpacity(
                                      0.45,
                                    ),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Natchathiram",
                                style: GoogleFonts.lexend(
                                  color: AppColors.Textcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              shbox5,
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  focusColor: AppColors.white,
                                  suffixIcon: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 30, // Reduced size for better fit
                                    ),
                                  ),
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
                                  ),
                                  hintText: 'Select',
                                  hintStyle: GoogleFonts.lexend(
                                    color: AppColors.Textcolor.withOpacity(
                                      0.45,
                                    ),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    shbox20,

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Property value",
                                style: GoogleFonts.lexend(
                                  color: AppColors.Textcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              shbox5,
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  focusColor: AppColors.white,
                                  suffixIcon: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 30,
                                    ),
                                    // Icon(
                                    //   Icons.calendar_month_rounded,
                                    //   size: 30, // Reduced size for better fit
                                    // ),
                                  ),
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
                                  ),
                                  hintText: 'Select',
                                  hintStyle: GoogleFonts.lexend(
                                    color: AppColors.Textcolor.withOpacity(
                                      0.45,
                                    ),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Acres value",
                                style: GoogleFonts.lexend(
                                  color: AppColors.Textcolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              shbox5,
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  focusColor: AppColors.white,
                                  suffixIcon: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 30,
                                    ),
                                  ),
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
                                  ),
                                  hintText: 'Select',
                                  hintStyle: GoogleFonts.lexend(
                                    color: AppColors.Textcolor.withOpacity(
                                      0.45,
                                    ),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    shbox20,

                    // Center(
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: AppColors.redcolour,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //       ),
                    //       padding: const EdgeInsets.symmetric(
                    //         horizontal: 70,
                    //         vertical: 15,
                    //       ), // width, height
                    //     ),
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "Next",
                    //           style: GoogleFonts.lexend(
                    //             color: AppColors.white,
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 32,
                    //           ),
                    //         ),
                    //         swbox5,
                    //         Icon(
                    //           Icons.double_arrow_sharp,
                    //           color: AppColors.white,
                    //           size: 40,
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 150, // Fixed width
                          child: ElevatedButton(
                            onPressed: () {
                           Navigator.pop(context); 
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.white,
                              foregroundColor: AppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  width: 2,
                                  color: AppColors.Black,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              elevation: 2,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.keyboard_double_arrow_left,
                                  color: AppColors.redcolour1,
                                  size: 25,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "Previous",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.redcolour1,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 50,
                          width: 150, // Same fixed width
                          child: ElevatedButton(
                            onPressed: () {
                                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Step3_page(),
                              ),
                            );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.redcolour,
                              foregroundColor: AppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              elevation: 2,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Next",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Icon(
                                  Icons.keyboard_double_arrow_right,
                                  color: AppColors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
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

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors
          .redcolour1 // Same red color as in image
      ..style = PaintingStyle.fill;

    // Border paint
    // final borderPaint = Paint()
    //   ..color = AppColors.redcolour2.withOpacity(0.3)
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 20
    //   ..strokeCap = StrokeCap.round;

    final path = Path();

    // Outer arc (bottom)
    path.moveTo(0, size.height);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height),
        radius: size.width / 01,
      ),
      3.14159, // start angle (180 degrees)
      -3.14159, // sweep angle (-180 degrees)
      false,
    );

    // Inner top cutout
    path.arcTo(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height),
        radius: size.width / 3,
      ),
      0,
      3.14159,
      false,
    );

    path.close();
    // canvas.drawPath(path, borderPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
