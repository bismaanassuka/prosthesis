import 'dart:async';
import 'package:flutter_svg/svg.dart';
// import 'package:simple_shadow/simple_shadow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prosthesis/dashboard.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getHeight(16)),
              child: SvgPicture.asset(
                'assets/icon/welcome/LOGO.svg',
                width: getHeight(72),
              ),
            )
            // SimpleShadow(
            //     opacity: 0.2,
            //     offset: const Offset(1, 1),
            //     child: SvgPicture.asset('assets/icon/welcome/LOGO.svg')),
            // SizedBox(
            //   height: getHeight(20),
            // ),
            // Text(
            //   'Prosthetic Go',
            //   style: blacktTextStyle.copyWith(
            //       fontWeight: bold, fontSize: getWidth(14)),
            // )
          ],
        ),
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Dashboard();
  }
}
