import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:kvg_app_matrimony/Bottombar/bottombar.dart';
import 'package:kvg_app_matrimony/Contact_Us/View/Contact_Us.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step1.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step2.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step3.dart';
import 'package:kvg_app_matrimony/Createaccount/View/Step4.dart';
import 'package:kvg_app_matrimony/EditProfile/View/Edit_Step1.dart';
import 'package:kvg_app_matrimony/Feedback/View/Feedback.dart';
import 'package:kvg_app_matrimony/Forgot/View/Forgot_changepassword.dart';
import 'package:kvg_app_matrimony/Forgot/View/Forgot_start.dart';
import 'package:kvg_app_matrimony/Forgot/View/Otp_verification.dart';
import 'package:kvg_app_matrimony/Galley/View/Galley.dart';
import 'package:kvg_app_matrimony/Help/View/help.dart';
import 'package:kvg_app_matrimony/Home/View/Home_Cardpage.dart';
import 'package:kvg_app_matrimony/Home/View/Home_page.dart';
import 'package:kvg_app_matrimony/Login/View/Login_page.dart';
import 'package:kvg_app_matrimony/Matches/View/Jathagam.dart';
import 'package:kvg_app_matrimony/Matches/View/Matches.dart';
import 'package:kvg_app_matrimony/Notifications/View/Notifications.dart';

import 'package:kvg_app_matrimony/Policies_terms/View/Policies_terms.dart';
import 'package:kvg_app_matrimony/Profile/View/Profile_page.dart';
import 'package:kvg_app_matrimony/Sidemenu/Side_drawer.dart';
import 'package:kvg_app_matrimony/summa.dart';

void main() {
  runApp(const MyApp());
  // runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
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
      home: LoginPage(),
      // ForgotStart_page(),
      // OtpVerification_page(),
      // ForgotChangepassword_page(),
      // Step1_page(),
      // Step1_page(),
      //  Step2_page(),
      // Step3_page(),
      // Step4_page(),
      // GoogleTranslatePage(),
      // HomePage(),
      // MatchesPage(),
      // ProfileDetailsPage(),
      // Matches_page(),
      // Edit_Step1_page(),
      // Bottombar(),
      // Jathagam(),
      // Galley_page(),
      // NavDrawer(),
      // FeedBack(),
      // MerchantApp(),
      // PoliciesTerms_page(),
      // Notifications_page(),
      // Help_page(),
      // ContactUs_page(),
    );
  }
}
