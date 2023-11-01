// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:myapp/page-2/splash-screen1.dart';
import 'package:myapp/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashTimer(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // splashscreenH9b (5:76)
        padding: EdgeInsets.fromLTRB(0 * fem, 300 * fem, 0 * fem, 300 * fem),
        width: double.infinity,
        height: 932 * fem,
        decoration: const BoxDecoration(
          color: Color(0xff009900),
        ),
        child: Center(
          // new1cBs (51:6)
          child: SizedBox(
            width: 430 * fem,
            height: 300 * fem,
            child: Image.asset(
              'assets/page-2/images/new1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  void splashTimer(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    navigate(context, const SplashScreen1());
  }
}
