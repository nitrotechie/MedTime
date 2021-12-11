import 'package:flutter/material.dart';
import 'package:med_time_app/screens/add_medicine.dart';
import 'package:med_time_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.buttonColor,
      ),
      home: const AddMedicineScreen(),
    );
  }
}
