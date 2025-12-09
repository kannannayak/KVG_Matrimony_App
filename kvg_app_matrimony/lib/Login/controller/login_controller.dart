import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kvg_app_matrimony/Bottombar/bottombar.dart';
import 'package:kvg_app_matrimony/Login/View/Login_page.dart';
import 'package:kvg_app_matrimony/Login/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Helper/network/api_endpoints.dart';

class LoginController extends GetxController {
  var isloading = false.obs;

  var isChecking = true.obs;

  var loginModel = LoginModel().obs;

  final Rx<TextEditingController> useridController =
      TextEditingController().obs;
  final Rx<TextEditingController> passwordController =
      TextEditingController().obs;
  RxBool passwordVisible = true.obs;

  void updateVisibility() {
    passwordVisible.toggle();
  }

  Future<void> loginUser({
    required String userid,
    required String password,
  }) async {
    if (userid.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Alert",
        "User ID & Password cannot be empty",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    try {
      isloading.value = true;
      const apiUrl = ApiEndpoints.bashUrl + ApiEndpoints.login;
      final request = {"userid": userid, "password": password};

      if (kDebugMode) {
        print("====================================>>>>>>>>>user id: $userid");
        print(
          "====================================>>>>>>>>>user id: $password",
        );
      }
      var response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode(request),
      );

      if (response.statusCode == 200) {
        var result = LoginModel.fromJson(jsonDecode(response.body));

        if (result.status == true) {
          await saveProfileId(result.userData!.kvgProfileId.toString());

          Future.delayed(Duration(seconds: 1), () {
            Get.offAll(() => Bottombar());
          });

          useridController.value.clear();
          passwordController.value.clear();

          if (kDebugMode) {
            print("============================>>>>>>>>>>>>phone number: ${result.userData!.phoneNumber}");
            print("============================>>>>>>>>>>>>password: ${result.userData!.passwordPin}");
          }
          Get.snackbar(
            'Success',
            'Login successful!',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.green,
            colorText: Colors.white,
            margin: EdgeInsets.all(10),
            borderRadius: 10,
            duration: Duration(seconds: 2),
          );
        } else {
          Get.snackbar(
            'Error',
            'Login error!',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            margin: EdgeInsets.all(10),
            borderRadius: 10,
            duration: Duration(seconds: 2),
          );
        }
      }
    } catch (e) {
      Get.snackbar("Error", "Something went wrong");
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isloading.value = false;
    }
  }

  Future<void> saveProfileId(String id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("kvg_profile_id", id);
  }

  Future<void> logoutUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove("kvg_profile_id");
    Get.offAll(() => LoginPage());
  }
}
