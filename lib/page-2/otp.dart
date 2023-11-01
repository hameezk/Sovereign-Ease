// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-2/discription-screens-Tiy.dart';
import 'package:myapp/page-2/discription-screens.dart';
import 'package:myapp/utils.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  final EmailOTP myauth;
  const OtpScreen({super.key, required this.myauth});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otp = '';
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // otpLXB (20:277)
          width: double.infinity,
          height: 932 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Stack(
            children: [
              Positioned(
                // downbuttonsGD (20:278)
                left: 25 * fem,
                top: 41 * fem,
                child: GestureDetector(
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
              ),
              Positioned(
                // autogroupuvy7aRX (5yPcqcfTsmLb37MFg8Uvy7)
                left: 43 * fem,
                top: 114 * fem,
                child: Container(
                  width: 349.26 * fem,
                  height: 115 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // enteryourotp5dB (20:279)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 7 * fem, 64 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 181 * fem,
                        ),
                        child: Text(
                          'Enter,\nYour OTP!',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // image9mku (20:297)
                        width: 104.26 * fem,
                        height: 104.26 * fem,
                        child: Image.asset(
                          'assets/page-2/images/image-9.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // buttonWCh (20:286)
                left: 70 * fem,
                top: 423 * fem,
                child: GestureDetector(
                  onTap: () => verifyOtp(context),
                  // navigate(
                  //     context,
                  //     (isClient)
                  //         ? const DiscriptionScreen1()
                  //         : const CareProviderDiscriptionScreen1()),
                  child: Container(
                    width: 290 * fem,
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
                        'Confirm',
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
              ),
              Positioned(
                // pleaseentertheotpwesendyouonyo (20:292)
                left: 45 * fem,
                top: 244 * fem,
                child: Align(
                  child: SizedBox(
                    width: 340 * fem,
                    height: 21 * fem,
                    child: Text(
                      'Please enter the OTP we send you on your Email!',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff009900),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // pleaseentertheotpwesendyouonyo (20:292)
                left: 45 * fem,
                top: 290 * fem,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(color: primaryColorLight),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: OTPTextField(
                          // controller: otpFieldController,
                          length: 5,
                          width: MediaQuery.of(context).size.width * 0.8,
                          fieldWidth: 20,
                          style: const TextStyle(fontSize: 17),
                          textFieldAlignment: MainAxisAlignment.spaceEvenly,
                          fieldStyle: FieldStyle.underline,
                          otpFieldStyle:
                              OtpFieldStyle(borderColor: primaryColor),
                          onCompleted: (pin) {
                            setState(() {
                              otp = pin;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  verifyOtp(BuildContext context) async {
    bool res = await widget.myauth.verifyOTP(otp: otp);
    (res)
        ? verifyUser(context)
        : showCustomSnackbar(context: context, content: 'Invalid OTP...');
  }

  verifyUser(BuildContext context) async {
    if (isClient) {
      UserModel userModel = loggedinUser!;
      userModel.isEmailVerified = true;
       await FirebaseFirestore.instance
          .collection("users")
          .doc(userModel.uid)
          .set(userModel.toMap())
          .then(
        (value) {
          loggedinUser = userModel;
          Navigator.pop(context);
          showCustomSnackbar(context: context, content: 'Email Verified Sucessfully!');
          loggedinUser = userModel;
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const DiscriptionScreen1();
              },
            ),
          );
        },
      );
    } else {
      CareProviderModel userModel = loggedinUserCareProvider!;
      userModel.isEmailVerified = true;
       await FirebaseFirestore.instance
          .collection("staffMembers")
          .doc(userModel.uid)
          .set(userModel.toMap())
          .then(
        (value) {
          loggedinUserCareProvider = userModel;
          Navigator.pop(context);
          showCustomSnackbar(context: context, content: 'Email Verified Sucessfully!');
          loggedinUserCareProvider = userModel;
          // Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const CareProviderDiscriptionScreen1();
              },
            ),
          );
        },
      );
    }
    
  }
}
