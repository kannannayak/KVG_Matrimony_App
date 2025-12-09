import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvg_app_matrimony/Bottombar/bottombar.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step1.dart';

import 'package:kvg_app_matrimony/Forgot/View/Forgot_start.dart';
import 'package:kvg_app_matrimony/Helper/Colors.dart';
import 'package:kvg_app_matrimony/Login/controller/login_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final loginController = Get.put(LoginController());
  late AnimationController spinController;

  @override
  void initState() {
    super.initState();

    spinController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    autoLoginCheck();
  }

  @override
  void dispose() {
    spinController.dispose();
    super.dispose();
  }

  Future<void> autoLoginCheck() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? id = pref.getString("kvg_profile_id");

    if (id != null) {
      Future.delayed(Duration(milliseconds: 500), () {
        Get.offAll(() => Bottombar());
      });
    }
  }

  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );

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
                        controller: loginController.useridController.value,
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
                      Obx(
                        () => TextField(
                          maxLength: 8,
                          obscureText: !loginController.passwordVisible.value,
                          controller: loginController.passwordController.value,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            suffix: IconButton(
                              icon: Icon(
                                loginController.passwordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.Textcolor,
                              ),
                              onPressed: loginController.updateVisibility,
                            ),
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
                        child: Obx(() {
                          return ElevatedButton(
                            onPressed: loginController.isloading.value
                                ? null
                                : () {
                                    spinController.repeat();
                                    loginController
                                        .loginUser(
                                          userid: loginController
                                              .useridController
                                              .value
                                              .text,
                                          password: loginController
                                              .passwordController
                                              .value
                                              .text,
                                        )
                                        .then((_) {
                                          spinController.stop();
                                        });
                                  },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.redcolour,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 75,
                                vertical: 20,
                              ),
                            ),
                            child: loginController.isloading.value
                                ? SizedBox(
                                    width: 50,
                                    height: 10,
                                    child: SpinKitRotatingCircle(
                                      color: Colors.white,
                                      size: 40,
                                      controller: spinController,
                                    ),
                                  )
                                : Text(
                                    "Login",
                                    style: GoogleFonts.lexend(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          );
                        }),
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
