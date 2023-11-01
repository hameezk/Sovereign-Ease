// ignore_for_file: use_build_context_synchronously

import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/page-2/otp.dart';
import 'package:myapp/utils.dart';

class VerifyEmail extends StatefulWidget {
  final String email;
  const VerifyEmail({super.key, required this.email});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // verifyemail6Nu (20:246)
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
                        'Verify,\nYour Email!',
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
                  'Please check your email for the OTP!',
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
                              readOnly: true,
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
                onTap: () => sendOtp(context),
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
              Container(
                // autogroupkvyoLEd (5yPaZvwtEGgKzPrw8tKvyo)
                margin: EdgeInsets.fromLTRB(
                    90 * fem, 0 * fem, 77.26 * fem, 32 * fem),
                width: double.infinity,
                height: 21 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle9dzR (20:275)
                      left: 84 * fem,
                      top: 3 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 32 * fem,
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
                      // or9Sy (20:276)
                      left: 90 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 21 * fem,
                          height: 21 * fem,
                          child: Text(
                            'OR',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogrouphukr32Z (5yPaeqyMyLybzkdgbzHUkR)
                margin:
                    EdgeInsets.fromLTRB(45 * fem, 0 * fem, 0.26 * fem, 0 * fem),
                width: double.infinity,
                height: 35 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff7bcc70)),
                  color: const Color(0xffecf1fa),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Center(
                  child: Text(
                    'Send Again',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff009900),
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

  sendOtp(BuildContext context) async {
    EmailOTP myauth = EmailOTP();
    myauth.setConfig(
        appEmail: "hameezkhalid@gmail.com",
        appName: "Sovereign Ease",
        userEmail: emailController.text.trim(),
        otpLength: 5,
        otpType: OTPType.digitsOnly);

    try {
      await myauth.sendOTP();
      showCustomSnackbar(
          context: context,
          content: 'OTP Sent to: ${emailController.text.trim()}');
      navigate(
        context,
        OtpScreen(
          myauth: myauth,
        ),
      );
    } catch (e) {
      showCustomSnackbar(context: context, content: 'An error occoured....');
    }
  }
}
