import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:myapp/page-2/sign-in.dart';
import 'package:myapp/page-2/verify-email.dart';
import 'package:myapp/utils.dart';
import '../helpers/ui_helper.dart';
import '../main.dart';
import '../models/user_model.dart';

class CreateAccountClient extends StatefulWidget {
  const CreateAccountClient({super.key});

  @override
  State<CreateAccountClient> createState() => _CreateAccountClientState();
}

class _CreateAccountClientState extends State<CreateAccountClient> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emergencyContactController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  bool showPass = true;
  bool showConfirmPass = true;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // signinJED (19:74)
            padding:
                EdgeInsets.fromLTRB(25 * fem, 41 * fem, 37.87 * fem, 146 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Container(
                  // autogroupmsahJNd (5yPZNDT3iBjxNqfMSTmsaH)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // heyloginheredQu (19:94)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 7.13 * fem, 36.87 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 208 * fem,
                        ),
                        child: Text(
                          'Create,\nAccount!',
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
                        // image3vQ1 (19:96)
                        width: 104.26 * fem,
                        height: 104.26 * fem,
                        child: Image.asset(
                          'assets/page-2/images/image-3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // newherecreateaccountFhB (19:97)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 130.13 * fem, 45 * fem),
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => navigate(
                                  context,
                                  const LoginScreen(),
                                ),
                          text: 'Login!',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff009900),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: primaryColorLight,
                  radius: 50,
                  child: const Icon(
                    Icons.person_2_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
                      margin: EdgeInsets.fromLTRB(
                          20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
                      width: 150 * fem,
                      height: 56 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle5BFP (19:98)
                            left: 0 * fem,
                            top: 11 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 150 * fem,
                                height: 45 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                    border: Border.all(
                                        color: const Color(0xff009900)),
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
                                width: 80 * fem,
                                height: 15 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
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
                                width: 70 * fem,
                                height: 18 * fem,
                                child: Text(
                                  'First Name',
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
                                width: 138 * fem,
                                height: 18 * fem,
                                child: TextField(
                                    controller: firstNameController,
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
                    Container(
                      // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
                      margin: EdgeInsets.fromLTRB(
                          20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
                      width: 150 * fem,
                      height: 56 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle5BFP (19:98)
                            left: 0 * fem,
                            top: 11 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 150 * fem,
                                height: 45 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                    border: Border.all(
                                        color: const Color(0xff009900)),
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
                                width: 80 * fem,
                                height: 15 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
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
                                width: 70 * fem,
                                height: 18 * fem,
                                child: Text(
                                  'Last Name',
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
                                width: 138 * fem,
                                height: 18 * fem,
                                child: TextField(

                                    controller: lastNameController,
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
                  ],
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
                            width: 400 * fem,
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
                Container(
                  // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                  margin: EdgeInsets.fromLTRB(
                      20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                  width: double.infinity,
                  height: 56 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle7fTP (19:104)
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
                        // rectangle8mmK (19:105)
                        left: 14 * fem,
                        top: 3 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 83 * fem,
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
                        // passwordh9B (19:106)
                        left: 27 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 75 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Phone Number',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // bVT (19:107)
                        left: 27 * fem,
                        top: 10 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 320 * fem,
                            // height: 28 * fem,
                            child: TextField(
                              controller: phoneNoController,
                              keyboardType: TextInputType.phone,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 2.0 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: CountryCodePicker(
                                  onChanged: print,
                                  enabled: true,
                                  initialSelection: 'Us',
                                  // favorite: const ['+92', 'Pk'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,

                                  flagWidth: 20,
                                  textStyle: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: const Color(0xff000000),
                                  ),
                                  alignLeft: false,
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectDate(context);
                  },
                  child: Container(
                    // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                    width: double.infinity,
                    height: 56 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle7fTP (19:104)
                          left: 0 * fem,
                          top: 11 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 340 * fem,
                              height: 45 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  border: Border.all(
                                      color: const Color(0xff009900)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle8mmK (19:105)
                          left: 14 * fem,
                          top: 3 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 83 * fem,
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
                          // passwordh9B (19:106)
                          left: 27 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 35 * fem,
                              height: 18 * fem,
                              child: Text(
                                'DOB',
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
                          // bVT (19:107)
                          left: 27 * fem,
                          top: 29 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 300 * fem,
                              height: 18 * fem,
                              child: GestureDetector(
                                onTap: () => selectDate(context),
                                child: TextField(
                                    readOnly: true,
                                    controller: dateOfBirthController,
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
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                  margin: EdgeInsets.fromLTRB(
                      20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                  width: double.infinity,
                  height: 56 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle7fTP (19:104)
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
                        // rectangle8mmK (19:105)
                        left: 14 * fem,
                        top: 3 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 83 * fem,
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
                        // passwordh9B (19:106)
                        left: 27 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 75 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Address',
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
                        // bVT (19:107)
                        left: 27 * fem,
                        top: 29 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 300 * fem,
                            height: 18 * fem,
                            child: TextField(
                                controller: addressController,
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
                Container(
                  // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                  margin: EdgeInsets.fromLTRB(
                      20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                  width: double.infinity,
                  height: 56 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle7fTP (19:104)
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
                        // rectangle8mmK (19:105)
                        left: 14 * fem,
                        top: 3 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 165 * fem,
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
                        // passwordh9B (19:106)
                        left: 27 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 160 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Emergency Contact',
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
                        // bVT (19:107)
                        left: 27 * fem,
                        top: 10 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 320 * fem,
                            // height: 28 * fem,
                            child: TextField(
                              controller: emergencyContactController,
                              keyboardType: TextInputType.phone,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 2.0 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: CountryCodePicker(
                                  onChanged: print,
                                  enabled: true,
                                  initialSelection: 'Us',
                                  // favorite: const ['+92', 'Pk'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,

                                  flagWidth: 20,
                                  textStyle: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: const Color(0xff000000),
                                  ),
                                  alignLeft: false,
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                StatefulBuilder(builder: (context, state) {
                  return Container(
                    // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                    width: double.infinity,
                    height: 56 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle7fTP (19:104)
                          left: 0 * fem,
                          top: 11 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 340 * fem,
                              height: 45 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  border: Border.all(
                                      color: const Color(0xff009900)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle8mmK (19:105)
                          left: 14 * fem,
                          top: 3 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 83 * fem,
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
                          // passwordh9B (19:106)
                          left: 27 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 75 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Password',
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
                          // bVT (19:107)
                          left: 27 * fem,
                          top: 18 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 300 * fem,
                              height: 25 * fem,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                        controller: passwordController,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                        obscureText: showPass,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: GestureDetector(
                                      onTap: () => state(() {
                                        showPass = !showPass;
                                      }),
                                      child: Icon(
                                        (showPass == false)
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                StatefulBuilder(builder: (context, state) {
                  return Container(
                    // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
                    width: double.infinity,
                    height: 56 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle7fTP (19:104)
                          left: 0 * fem,
                          top: 11 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 340 * fem,
                              height: 45 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  border: Border.all(
                                      color: const Color(0xff009900)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle8mmK (19:105)
                          left: 14 * fem,
                          top: 3 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 83 * fem,
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
                          // passwordh9B (19:106)
                          left: 27 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 150 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Repeat Password',
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
                          // bVT (19:107)
                          left: 27 * fem,
                          top: 18 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 300 * fem,
                              height: 25 * fem,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                        controller: confirmPasswordController,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                        obscureText: showConfirmPass,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: GestureDetector(
                                      onTap: () => state(() {
                                        showConfirmPass = !showConfirmPass;
                                      }),
                                      child: Icon(
                                        (showConfirmPass == false)
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                GestureDetector(
                  onTap: () => checkValues(context),
                  child: Container(
                    // buttonDWq (19:113)
                    margin: EdgeInsets.fromLTRB(
                        45 * fem, 0 * fem, 32.13 * fem, 15 * fem),
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
                        'Create',
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
      ),
    );
  }

  void checkValues(context) {
    showLoadingDialog(context, 'Signing up...');
    String email = emailController.text.trim();
    String firstName = firstNameController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();
    String lastName = lastNameController.text.trim();
    String dateOfBirth = dateOfBirthController.text.trim();
    String phoneNo = phoneNoController.text.trim();
    String address = addressController.text.trim();
    String emergencyContact = emergencyContactController.text.trim();

    if (email.isEmpty ||
        firstName.isEmpty ||
        password.isEmpty ||
        lastName.isEmpty ||
        dateOfBirth.isEmpty ||
        phoneNo.isEmpty ||
        address.isEmpty ||
        emergencyContact.isEmpty ||
        confirmPassword.isEmpty) {
      showCustomSnackbar(
          context: context, content: 'Please fill all the required field!');
      Navigator.pop(context);
    } else {
      if (password != confirmPassword) {
        showCustomSnackbar(
            context: context, content: 'Passwords do not match!');
        Navigator.pop(context);
      } else {
        signup(
          email,
          password,
          confirmPassword,
          firstName,
          lastName,
          dateOfBirth,
          phoneNo,
          address,
          emergencyContact,
          context,
        );
      }
    }
  }

  Future<void> signup(
    String email,
    String password,
    String confirmPassword,
    String firstName,
    String lastName,
    String dateOfBirth,
    String phoneNo,
    String address,
    String emergencyContact,
    context,
  ) async {
    UserCredential? credentials;

    try {
      print('signing up');
      credentials = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (ex) {
      print('expextion: ${ex.message}');
      showCustomSnackbar(
        context: context,
        content: ex.code.toString(),
      );
      Navigator.pop(context);
    }

    if (credentials != null) {
      String uid = credentials.user!.uid;
      UserModel newUser = UserModel(
        uid: uid,
        firstName: firstName,
        email: email,
        profilePic: '',
        lastName: lastName,
        dateOfBirth: dateOfBirth,
        phoneNo: phoneNo,
        isEmailVerified: false,
        isphoneVerified: false,
        address: address,
        emergencyContact: emergencyContact,
      );

      await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .set(newUser.toMap())
          .then(
        (value) {
          loggedinUser = newUser;
          Navigator.pop(context);
          showCustomSnackbar(context: context, content: 'New user created!');
          loggedinUser = newUser;
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return  VerifyEmail(email: email,);
              },
            ),
          );
        },
      );
    }
  }

  selectDate(context) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 900000000000)),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColorLight,
              onPrimary: Colors.black54,
            ),
          ),
          child: child!,
        );
      },
    );
    setState(() {
      selectedDate = date!;
      dateOfBirthController.text =
          DateFormat('MMM d, yyyy').format(selectedDate);
    });
  }
}
