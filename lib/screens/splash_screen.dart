import 'dart:async';

import 'package:flutter/material.dart';
import 'package:med_time_app/screens/get_started.dart';
import 'package:med_time_app/screens/sign_in.dart';
import 'package:med_time_app/utils/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SignInScreen()));
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const GetStartedScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: -70,
            top: -50,
            child: CircleAvatar(
              radius: 100,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.designColor1.withOpacity(0.5),
                  // gradient: RadialGradient(
                  //   center: Alignment.center,
                  //   radius: 0,
                  //   colors: [
                  //     Colors.transparent,
                  //     AppColors.designColor1.withOpacity(0.9),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: -120,
            child: CircleAvatar(
              radius: 100,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.designColor1.withOpacity(0.5),
                  // gradient: RadialGradient(
                  //   center: Alignment.center,
                  //   radius: 0,
                  //   colors: [
                  //     Colors.transparent,
                  //     AppColors.designColor1.withOpacity(0.8),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}