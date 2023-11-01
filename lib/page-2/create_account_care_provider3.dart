import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/sign-in.dart';
import 'package:myapp/page-2/verify-email.dart';
import 'package:myapp/utils.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../helpers/ui_helper.dart';

class CreateAccountCareProvider3 extends StatefulWidget {
  final CareProviderModel careProviderModel;
  const CreateAccountCareProvider3(
      {super.key, required this.careProviderModel});

  @override
  State<CreateAccountCareProvider3> createState() =>
      _CreateAccountCareProvider3State();
}

class _CreateAccountCareProvider3State
    extends State<CreateAccountCareProvider3> {
  TextEditingController referencesController = TextEditingController();
  TextEditingController chargesController = TextEditingController();
  List<String> workExp = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  String selectedWorkExp = '1';
  List<String> jobRole = ['UCP', 'TCP', 'ACP'];
  String selectedJobrole = 'UCP';
  List<String> jobTitle = ['Personal Support Worker (PSW)', 'test', 'demo'];
  String selectedJobtitle = 'Personal Support Worker (PSW)';
  List<String> prefferedShift = ['Full-Time', 'Part-Time', 'Flexible'];
  String selectedPrefferedShift = 'Flexible';
  List<String> availablity = ['Full-Time', 'Part-Time', 'Flexible'];
  String selectedAvailablity = 'Full-Time';
  List<String> serviceCategory = [
    'In-Home Care Services',
    'Healthcare Facilities Services',
    'Outpatient Clinic Services'
  ];
  String selectedServiceCategory = 'In-Home Care Services';
  List<String> typesOfServices = [
    'Physical Therapy',
    'Mental Therapy',
    'Physical Support'
  ];
  String selectedTypesOfService = 'Physical Therapy';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 25.0,
                      lineWidth: 10.0,
                      animation: true,
                      percent: 3 / 3,
                      center: Text(
                        '3 of 3',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                      backgroundColor: Colors.grey[300]!,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: primaryColor,
                    ),
                    Text(
                      '       More Details',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ],
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
                                width: 60 * fem,
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
                                width: 100 * fem,
                                height: 18 * fem,
                                child: Text(
                                  'Work Experience',
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
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        isExpanded: true,
                                        value: selectedWorkExp,
                                        dropdownColor: backgroundColor,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedWorkExp = newValue!;
                                          });
                                        },
                                        items: workExp.map((String value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5 * ffem / fem,
                                                  // color: primaryColorLight,
                                                ),
                                              ));
                                        }).toList())),
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
                                width: 60 * fem,
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
                                width: 34 * fem,
                                height: 18 * fem,
                                child: Text(
                                  'Job Role',
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
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                        isExpanded: true,
                                        value: selectedJobrole,
                                        dropdownColor: backgroundColor,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedJobrole = newValue!;
                                          });
                                        },
                                        items: jobRole.map((String value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5 * ffem / fem,
                                                  // color: primaryColorLight,
                                                ),
                                              ));
                                        }).toList())),
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
                              'Job Titles',
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
                              width: 300 * fem,
                              height: 18 * fem,
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      isExpanded: true,
                                      value: selectedJobtitle,
                                      dropdownColor: backgroundColor,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedJobtitle = newValue!;
                                        });
                                      },
                                      items: jobTitle.map((String value) {
                                        return DropdownMenuItem(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                // color: primaryColorLight,
                                              ),
                                            ));
                                      }).toList()))),
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
                            width: 100 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Preferred Shift',
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
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      isExpanded: true,
                                      value: selectedPrefferedShift,
                                      dropdownColor: backgroundColor,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedPrefferedShift = newValue!;
                                        });
                                      },
                                      items: prefferedShift.map((String value) {
                                        return DropdownMenuItem(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                // color: primaryColorLight,
                                              ),
                                            ));
                                      }).toList()))),
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
                              'Availability',
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
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      isExpanded: true,
                                      value: selectedAvailablity,
                                      dropdownColor: backgroundColor,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedAvailablity = newValue!;
                                        });
                                      },
                                      items: availablity.map((String value) {
                                        return DropdownMenuItem(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                // color: primaryColorLight,
                                              ),
                                            ));
                                      }).toList()))),
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
                            width: 160 * fem,
                            height: 18 * fem,
                            child: Text(
                              'References (if any)',
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
                                controller: referencesController,
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
                              'Service Category',
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
                              height: 18 * fem,
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      isExpanded: true,
                                      value: selectedServiceCategory,
                                      dropdownColor: backgroundColor,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedServiceCategory = newValue!;
                                        });
                                      },
                                      items:
                                          serviceCategory.map((String value) {
                                        return DropdownMenuItem(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                // color: primaryColorLight,
                                              ),
                                            ));
                                      }).toList()))),
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
                            width: 150 * fem,
                            height: 18 * fem,
                            child: Text(
                              'Types of Services',
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
                              height: 18 * fem,
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      isExpanded: true,
                                      value: selectedTypesOfService,
                                      dropdownColor: backgroundColor,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedTypesOfService = newValue!;
                                        });
                                      },
                                      items:
                                          typesOfServices.map((String value) {
                                        return DropdownMenuItem(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5 * ffem / fem,
                                                // color: primaryColorLight,
                                              ),
                                            ));
                                      }).toList()))),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        'Verify Email',
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

  checkValues(BuildContext context) async {
    showLoadingDialog(context, 'Signing up...');
    String workExp = selectedWorkExp;
    String jobRole = selectedJobrole;
    String jobTitle = selectedJobtitle;
    String prefferedShift = selectedPrefferedShift;
    String availablity = selectedAvailablity;
    String references = referencesController.text.trim();
    String serviceCategory = selectedServiceCategory;
    String typesOfService = selectedTypesOfService;
    String charges = (chargesController.text.isNotEmpty)
        ? chargesController.text.trim()
        : '1200';

    if (workExp.isEmpty ||
        jobRole.isEmpty ||
        jobTitle.isEmpty ||
        prefferedShift.isEmpty ||
        availablity.isEmpty ||
        references.isEmpty ||
        serviceCategory.isEmpty ||
        typesOfService.isEmpty) {
      showCustomSnackbar(
          context: context, content: 'Please fill all the required field!');
      Navigator.pop(context);
    } else {
      CareProviderModel careProviderModel = widget.careProviderModel;
      careProviderModel.workExperience = workExp;
      careProviderModel.jobRole = jobRole;
      careProviderModel.jobTitle = jobTitle;
      careProviderModel.prefferedShifft = prefferedShift;
      careProviderModel.availablity = availablity;
      careProviderModel.reference = references;
      careProviderModel.serviceCategory = serviceCategory;
      careProviderModel.typeOfService = typesOfService;
      careProviderModel.charges = charges;
      await FirebaseFirestore.instance
          .collection("staffMembers")
          .doc(careProviderModel.uid)
          .set(careProviderModel.toMap())
          .then(
        (value) {
          loggedinUserCareProvider = careProviderModel;
          Navigator.pop(context);
          showCustomSnackbar(context: context, content: 'User updated!');
          loggedinUserCareProvider = careProviderModel;
          navigate(
            context,
            VerifyEmail(email: careProviderModel.email ?? ''),
          );
        },
      );
    }
  }
}
