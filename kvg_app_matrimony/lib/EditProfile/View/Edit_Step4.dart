import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Login/View/Login_page.dart';

class Edit_Step4_page extends StatefulWidget {
  const Edit_Step4_page({Key? key}) : super(key: key);

  @override
  State<Edit_Step4_page> createState() => Edit_Step4_pageState();
}

class Edit_Step4_pageState extends State<Edit_Step4_page> {
  bool _isRead = false;
  bool _isPasswordVisible = false;
  bool _isConfirmVisible = false;
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
                          "4/4",
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
                      "Email id",
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
                        hintText: 'Enter Email id',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    shbox20,
                    Text(
                      "Password pin",
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
                        hintText: 'Enter Password',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isConfirmVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.Textcolor,
                          ),
                          onPressed: () {
                            setState(() {
                              _isConfirmVisible = !_isConfirmVisible;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLength: 8,
                      obscureText: !_isConfirmVisible,
                    ),
                    shbox20,
                    Text(
                      "Confirm pin",
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
                        hintText: 'Enter Confirm',
                        hintStyle: GoogleFonts.lexend(
                          color: AppColors.Textcolor.withOpacity(0.45),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isConfirmVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.Textcolor,
                          ),
                          onPressed: () {
                            setState(() {
                              _isConfirmVisible = !_isConfirmVisible;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLength: 8,
                      obscureText: !_isConfirmVisible,
                    ),
                    shbox10,
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Read ",
                              style: GoogleFonts.lexend(
                                color: AppColors.Textcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.Textcolor,
                                decorationThickness: 2.5,
                              ),
                            ),
                          ),
                          Text(
                            "policy and terms ",
                            style: GoogleFonts.lexend(
                              color: AppColors.Textcolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    shbox20,
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: Checkbox(
                              value: _isRead,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isRead = value ?? false;
                                });
                              },
                              activeColor: AppColors.Textcolor,
                              checkColor: AppColors.white,
                            ),
                          ),
                          swbox5,
                          Expanded(
                            child: Text(
                              "I have read and hereby agree policies and terms",
                              style: GoogleFonts.lexend(
                                color: AppColors.Textcolor,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                builder: (context) => LoginPage(),
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
                                  "Submit",
                                  style: GoogleFonts.lexend(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
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
