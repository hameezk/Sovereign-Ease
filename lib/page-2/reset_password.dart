// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/page-2/sign-in.dart';
import 'package:myapp/utils.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // ResetPassword6Nu (20:246)
          padding:
              EdgeInsets.fromLTRB(25 * fem, 41 * fem, 37.74 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      // downbuttonaxR (19:92)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 332.13 * fem, 37.87 * fem),
                      width: 35 * fem,
                      height: 35 * fem,
                      child: Image.asset(
                        'assets/images/backButton.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // autogrouptbaqhdb (5yPaUS73Vz5Gq9UQCyTbAq)
                margin:
                    EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 15 * fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // verifyyouremailDrq (20:248)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 7 * fem, 33 * fem, 0 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 212 * fem,
                      ),
                      child: Text(
                        'Reset,\n Password!',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 36 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      // image8iHo (20:245)
                      width: 104.26 * fem,
                      height: 104.26 * fem,
                      child: Image.asset(
                        'assets/page-2/images/image-8.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // pleasecheckyouremailfortheotpF (20:270)
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 71.26 * fem, 45 * fem),
                child: Text(
                  'Please enter your email for the verification link!',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.5 * ffem / fem,
                    color: const Color(0xff009900),
                  ),
                ),
              ),
              Container(
                // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
                margin: EdgeInsets.fromLTRB(
                    20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
                width: double.infinity,
                height: 56 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle5BFP (19:98)
                      left: 0 * fem,
                      top: 11 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 340 * fem,
                          height: 45 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              border:
                                  Border.all(color: const Color(0xff009900)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle6Gnd (19:99)
                      left: 14 * fem,
                      top: 3 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 60 * fem,
                          height: 15 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                              color: const Color(0xffecf1fa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // emailAt1 (19:100)
                      left: 27 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 34 * fem,
                          height: 18 * fem,
                          child: Text(
                            'Email',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // sovereigngmailcomrF3 (19:103)
                      left: 27 * fem,
                      top: 25 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 320 * fem,
                          height: 18 * fem,
                          child: TextField(
                              controller: emailController,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => resetPass(context, emailController.text.trim()),
                child: Container(
                  // buttongfs (20:261)
                  margin: EdgeInsets.fromLTRB(
                      45 * fem, 0 * fem, 32.26 * fem, 39 * fem),
                  width: double.infinity,
                  height: 35 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xff7bcc70),
                    borderRadius: BorderRadius.circular(5 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 3 * fem),
                        blurRadius: 2.5 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void resetPass(context, email) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim())
          .then(
        (value) {
          showCustomSnackbar(
              content: "Reset link sent on ${emailController.text.trim()}!",
              context: context);
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginScreen();
              },
            ),
          );
        },
      );
    } on FirebaseAuthException catch (ex) {
      showCustomSnackbar(content: ex.message.toString(), context: context);
    }
  }
}
