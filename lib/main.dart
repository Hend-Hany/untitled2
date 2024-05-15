import 'package:flutter/material.dart';
import 'package:untitled2/view/investor_profile/profile_view.dart';
import 'package:untitled2/view/investor_register/signup_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context,child){
        ScreenUtil.init(
            context,
            designSize: const Size(414, 896)
        );
        return child!;
      },
      home: InvestorProfile(),
    );
  }
}

