import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:med_time_app/screens/register.dart';
import 'package:med_time_app/utils/colors.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
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
                  gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0,
                      colors: [
                        Colors.transparent,
                        AppColors.designColor1.withOpacity(0.9),
                      ]),
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
                  gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0,
                      colors: [
                        Colors.transparent,
                        AppColors.designColor1.withOpacity(0.8),
                      ]),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/pills_1.png",
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
                const Text(
                  "Gets things done with MedTime",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Keep an up-to-date list of your medicine names, strengths, doses, and number of remaining refills",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.buttonColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
