import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step4.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:image_picker/image_picker.dart';

class Edit_Step3_page extends StatefulWidget {
  const Edit_Step3_page({Key? key}) : super(key: key);

  @override
  State<Edit_Step3_page> createState() => Edit_Step3_pageState();
}

class Edit_Step3_pageState extends State<Edit_Step3_page> {
  // Add this variable in your state class
  File? _selectedImage;

  // Add this method in your state class
  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  // Add this method to show option dialog
  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
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
                          "3/4",
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
                      "Career Details",
                      style: GoogleFonts.lexend(
                        color: AppColors.redcolour,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    shbox15,
                    Text(
                      "Employed",
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
                            size: 50,
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
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Select',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Text(
                      "Occupation",
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
                            size: 50,
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
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Select',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Text(
                      "Annual income",
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
                            size: 50,
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
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Select',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Text(
                      "Work location information",
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
                            size: 50,
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
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Select',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox30,

                    Text(
                      "Add profile photo",
                      style: GoogleFonts.lexend(
                        color: AppColors.redcolour,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    shbox3,

                    Text(
                      "(Add at least one photo,as people prefer profiles with a photo)",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    shbox20,

                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //   Container(
                                  //     height: screenHeight * 0.19,
                                  //     width: screenWidth * 0.42,
                                  //     decoration: BoxDecoration(
                                  //       borderRadius: BorderRadius.all(
                                  //         Radius.circular(30),
                                  //       ),
                                  //       border: Border.all(
                                  //         width: 2.5,
                                  //         color: AppColors.Black,
                                  //       ),
                                  //     ),
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.only(
                                  //         right: 10,
                                  //         left: 10,
                                  //       ),
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,

                                  //         children: [
                                  //           Center(
                                  //             child: InkWell(
                                  //               onTap: () {},
                                  //               child: Container(
                                  //                 height: screenHeight * 0.08,
                                  //                 width: screenWidth * 0.19,
                                  //                 decoration: BoxDecoration(
                                  //                   color: AppColors.Textcolor,
                                  //                   borderRadius: BorderRadius.all(
                                  //                     Radius.circular(5),
                                  //                   ),
                                  //                 ),
                                  //                 child: Center(
                                  //                   child: Icon(
                                  //                     Icons.add,
                                  //                     size: 50,
                                  //                     color: AppColors.white,
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           shbox15,
                                  //           Text(
                                  //             "Click to add photo",
                                  //             style: GoogleFonts.lexend(
                                  //               color: AppColors.Textcolor,
                                  //               fontWeight: FontWeight.bold,
                                  //               fontSize: 13,
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ),
                                  Container(
                                    height: screenHeight * 0.19,
                                    width: screenWidth * 0.42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      border: Border.all(
                                        width: 2.5,
                                        color: AppColors.Black,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                        left: 10,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: InkWell(
                                              onTap: _showImageSourceDialog,
                                              child: Container(
                                                height: screenHeight * 0.08,
                                                width: screenWidth * 0.19,
                                                decoration: BoxDecoration(
                                                  color: AppColors.Textcolor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                        Radius.circular(5),
                                                      ),
                                                ),
                                                child: _selectedImage == null
                                                    ? Center(
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 50,
                                                          color:
                                                              AppColors.white,
                                                        ),
                                                      )
                                                    : ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                        child: Image.file(
                                                          _selectedImage!,
                                                          fit: BoxFit.cover,
                                                          height:
                                                              screenHeight *
                                                              0.08,
                                                          width:
                                                              screenWidth *
                                                              0.19,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                          shbox15,
                                          Text(
                                            _selectedImage == null
                                                ? "Click to add photo"
                                                : "Photo selected",
                                            style: GoogleFonts.lexend(
                                              color: AppColors.Textcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              swbox7,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenHeight * 0.19,
                                    width: screenWidth * 0.42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      border: Border.all(
                                        width: 2.5,
                                        color: AppColors.Black,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                        left: 10,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,

                                        children: [
                                          Center(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: screenHeight * 0.08,
                                                width: screenWidth * 0.19,
                                                decoration: BoxDecoration(
                                                  color: AppColors.Textcolor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                        Radius.circular(5),
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 50,
                                                    color: AppColors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          shbox15,
                                          Text(
                                            "Click to add photo",
                                            style: GoogleFonts.lexend(
                                              color: AppColors.Textcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              swbox7,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenHeight * 0.19,
                                    width: screenWidth * 0.42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      border: Border.all(
                                        width: 2.5,
                                        color: AppColors.Black,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                        left: 10,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,

                                        children: [
                                          Center(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: screenHeight * 0.08,
                                                width: screenWidth * 0.19,
                                                decoration: BoxDecoration(
                                                  color: AppColors.Textcolor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                        Radius.circular(5),
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 50,
                                                    color: AppColors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          shbox15,
                                          Text(
                                            "Click to add photo",
                                            style: GoogleFonts.lexend(
                                              color: AppColors.Textcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
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
                        ),
                      ],
                    ),

                    shbox20,
                    Text(
                      "Community certificate",
                      style: GoogleFonts.lexend(
                        color: AppColors.redcolour,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                                Container(
                                  height: screenHeight * 0.19,
                                  width: screenWidth * 0.42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    border: Border.all(
                                      width: 2.5,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      children: [
                                        Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: screenHeight * 0.08,
                                              width: screenWidth * 0.19,
                                              decoration: BoxDecoration(
                                                color: AppColors.Textcolor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 50,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        shbox15,
                                        Text(
                                          "Click to add photo",
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
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
                    Text(
                      "Add id proof photo",
                      style: GoogleFonts.lexend(
                        color: AppColors.redcolour,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    shbox3,

                    Text(
                      "(EX: Aadhar card etc)",
                      style: GoogleFonts.lexend(
                        color: AppColors.Textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Frontend",
                                    style: GoogleFonts.lexend(
                                      color: AppColors.Textcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.19,
                                  width: screenWidth * 0.42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    border: Border.all(
                                      width: 2.5,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      children: [
                                        Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: screenHeight * 0.08,
                                              width: screenWidth * 0.19,
                                              decoration: BoxDecoration(
                                                color: AppColors.Textcolor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 50,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        shbox15,
                                        Text(
                                          "Click to add photo",
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Backend",
                                    style: GoogleFonts.lexend(
                                      color: AppColors.Textcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.19,
                                  width: screenWidth * 0.42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    border: Border.all(
                                      width: 2.5,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      children: [
                                        Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: screenHeight * 0.08,
                                              width: screenWidth * 0.19,
                                              decoration: BoxDecoration(
                                                color: AppColors.Textcolor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 50,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        shbox15,
                                        Text(
                                          "Click to add photo",
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
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
                    Text(
                      "Jathagam",
                      style: GoogleFonts.lexend(
                        color: AppColors.redcolour,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Full pic",
                                    style: GoogleFonts.lexend(
                                      color: AppColors.Textcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.19,
                                  width: screenWidth * 0.42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    border: Border.all(
                                      width: 2.5,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      children: [
                                        Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: screenHeight * 0.08,
                                              width: screenWidth * 0.19,
                                              decoration: BoxDecoration(
                                                color: AppColors.Textcolor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 50,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        shbox15,
                                        Text(
                                          "Click to add photo",
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Jathagam kattam",
                                    style: GoogleFonts.lexend(
                                      color: AppColors.Textcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                shbox5,
                                Container(
                                  height: screenHeight * 0.19,
                                  width: screenWidth * 0.42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30),
                                    ),
                                    border: Border.all(
                                      width: 2.5,
                                      color: AppColors.Black,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      children: [
                                        Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: screenHeight * 0.08,
                                              width: screenWidth * 0.19,
                                              decoration: BoxDecoration(
                                                color: AppColors.Textcolor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 50,
                                                  color: AppColors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        shbox15,
                                        Text(
                                          "Click to add photo",
                                          style: GoogleFonts.lexend(
                                            color: AppColors.Textcolor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
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
                                  builder: (context) => Step4_page(),
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
