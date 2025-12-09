import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kvg_app_matrimony/Login/View/Login_page.dart';

void main() {
  runApp(const MyApp());
  // runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
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
      },
    );
  }
}
