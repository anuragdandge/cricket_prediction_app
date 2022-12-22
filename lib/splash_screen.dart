import 'dart:async';

import 'package:cricket_prediction_app/HomeScreen.dart';
import 'package:cricket_prediction_app/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

String? finalName;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    getValidationData().whenComplete(() async {
      Timer(Duration(seconds: 3),
          () => Get.to(() => finalName != "" ? HomeScreen() : LoginScreen()));
      print("Name = $finalName");
    });

    super.initState();
  }

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainName = await sharedPreferences.getString('name') ?? "";
    setState(() {
      finalName = obtainName.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Lottie.asset('assets/Splash2.json')));
  }
}
