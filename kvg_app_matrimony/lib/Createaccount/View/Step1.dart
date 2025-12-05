import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step2.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class Step1_page extends StatefulWidget {
  const Step1_page({Key? key}) : super(key: key);

  @override
  State<Step1_page> createState() => _Step1_pageState();
}

class _Step1_pageState extends State<Step1_page> {
  @override
  Widget build(BuildContext context) {
    setScreenSize(context);
    return
    // Scaffold(
    //   backgroundColor: AppColors.fillcolour,
    //   // appBar: AppBar(
    //   //   title: Text(
    //   //     'Create account',
    //   //     style: TextStyle(
    //   //       fontSize: 20,
    //   //       fontWeight: FontWeight.bold,
    //   //       color: Colors.black,
    //   //     ),
    //   //   ),
    //   //   backgroundColor: Colors.white,
    //   //   elevation: 0,
    //   //   centerTitle: true,
    //   //   leading: IconButton(
    //   //     icon: Icon(Icons.arrow_back, color: Colors.black),
    //   //     onPressed: () {},
    //   //   ),
    //   // ),
    //   body: Stack(
    //     children: [
    //       Column(
    //         children: [
    //           SizedBox(
    //             width: double.infinity,
    //             height: 250,
    //             child: Container(
    //               decoration: BoxDecoration(
    //                 // color: AppColors.redcolour1,
    //                 image: DecorationImage(
    //                   image: AssetImage("assets/images/Ellipse2.png"),
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    
    Scaffold(
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
                          "1/4",
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
                      "Name",
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
                      "Phone number",
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
                      "Alternative Phone number",
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
                      "Education",
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
                      "Gender",
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

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date of birth",
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
                                    child: Image.asset(
                                      "assets/images/Calendar.png",
                                      width: 25,
                                      height: 25,
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
                                "Time of birth",
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
                                      Icons.calendar_month_rounded,
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
                                "Height",
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
                                "Weight",
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
                                "Body type",
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
                                "Body colour",
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
                    Text(
                      "Kongu kulam",
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
                      "District",
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
                      "Subdistrict",
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

                    Center(
                      child: SizedBox(
                        height: 60,
                        width: 280, // Same fixed width
                        child: ElevatedButton(
                          onPressed: () {
                                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Step2_page(),
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
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.keyboard_double_arrow_right,
                                color: AppColors.white,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
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
