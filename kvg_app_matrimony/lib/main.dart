import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step1.dart';
import 'package:kvg_app_matrimony/Forgot/View/Forgot_changepassword.dart';
import 'package:kvg_app_matrimony/Forgot/View/Forgot_start.dart';
import 'package:kvg_app_matrimony/Forgot/View/Otp_verification.dart';
import 'package:kvg_app_matrimony/Login/View/Login_page.dart';

void main() {
  // runApp(const MyApp());
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:
          //  LoginPage(),
          // ForgotStart_page(),
          // OtpVerification_page(),
          // ForgotChangepassword_page(),
          Step1_page(),
    );
  }
}
