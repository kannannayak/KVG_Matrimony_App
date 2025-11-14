import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Login/View/Login_page.dart';

class ForgotChangepassword_page extends StatefulWidget {
  const ForgotChangepassword_page({Key? key}) : super(key: key);

  @override
  State<ForgotChangepassword_page> createState() =>
      _ForgotChangepassword_pageState();
}

class _ForgotChangepassword_pageState extends State<ForgotChangepassword_page> {
  bool _isPasswordVisible = false;
  bool _isConfirmVisible = false;
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
                height: screenHeight * 0.59,
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
              height: screenHeight * 0.63,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: AppColors.fillcolour,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      shbox20,
                      Center(
                        child: 
                        Text(
                          "Change password",
                          style: GoogleFonts.lexend(
                            color: AppColors.Titletext,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      shbox30,
                      Text(
                        "Phone Number",
                        style: GoogleFonts.lexend(
                          color: AppColors.Textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      shbox5,
                      TextField(
                        maxLength: 10,
                        decoration: InputDecoration(
                          prefix: Text(
                            "+91 ",
                            style: GoogleFonts.lexend(
                              color: AppColors.Black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        // inputFormatters: <TextInputFormatter>[
                        //   FilteringTextInputFormatter.digitsOnly
                        // ],
                      ),
                      shbox20,
                      Text(
                        "Password",
                        style: GoogleFonts.lexend(
                          color: AppColors.Textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      shbox5,
                      TextField(
                        maxLength: 8,
                        obscureText: !_isPasswordVisible,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffix: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.Textcolor,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      shbox20,
                      Text(
                        "Confirm",
                        style: GoogleFonts.lexend(
                          color: AppColors.Textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      shbox5,
                      TextField(
                        maxLength: 8,
                        keyboardType: TextInputType.number,
                        obscureText: !_isConfirmVisible,
                        decoration: InputDecoration(
                          suffix: IconButton(
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
                      ),

                      shbox20,
                      Center(
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 75,
                              vertical: 20,
                            ), // width, height
                          ),
                          child: Text(
                            "Submit",
                            style: GoogleFonts.lexend(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
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
        ],
      ),
    );
  }
}
