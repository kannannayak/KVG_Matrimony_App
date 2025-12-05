import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Bottombar/bottombar.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step1.dart';

import 'package:kvg_app_matrimony/Forgot/View/Forgot_start.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
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
              height: screenHeight * 0.58,
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
                      Text(
                        "Welcome Back!",
                        style: GoogleFonts.lexend(
                          color: AppColors.Titletext,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      shbox30,
                      Text(
                        "E-mail/Phone Number",
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
                              fontSize: 16,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotStart_page(),
                                ),
                              );
                            },
                            child: Text(
                              "Forgot password ?",
                              style: GoogleFonts.lexend(
                                color: AppColors.redcolour,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      shbox20,
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bottombar(),
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
                            "Login",
                            style: GoogleFonts.lexend(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      shbox15,
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account ? ",
                              style: GoogleFonts.lexend(
                                color: AppColors.Textcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Step1_page(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.lexend(
                                  color: AppColors.redcolour,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
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
            ),
          ),
        ],
      ),
    );
  }
}
