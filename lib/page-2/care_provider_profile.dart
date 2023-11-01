import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/page-2/main-screen-pTj.dart';
import 'package:myapp/utils.dart';

import '../helpers/ui_helper.dart';
import '../models/care_provider_model.dart';

class UserProfileCareProvider1 extends StatefulWidget {
  const UserProfileCareProvider1({super.key});

  @override
  State<UserProfileCareProvider1> createState() =>
      _UserProfileCareProvider1State();
}

class _UserProfileCareProvider1State extends State<UserProfileCareProvider1> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emergencyContactController = TextEditingController();
  TextEditingController ssnController = TextEditingController();
  TextEditingController licenseNoController = TextEditingController();
  TextEditingController licenseExpController = TextEditingController();
  TextEditingController workExpController = TextEditingController();
  TextEditingController jobRoleController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController prefferedShiftController = TextEditingController();
  TextEditingController availablityController = TextEditingController();
  TextEditingController referencesController = TextEditingController();
  TextEditingController serviceCategoryController = TextEditingController();
  TextEditingController typesOfServiceController = TextEditingController();
  TextEditingController chargesController = TextEditingController();
  int showIndex = 0;
  List<String> services = [
    'In-Home Care Services',
    'Healthcare Facilities Services',
    'Outpatient Clinic Services',
  ];

  String selectedvalue = 'In-Home Care Services';

  @override
  void initState() {
    emailController.text = loggedinUserCareProvider!.email ?? '';
    firstNameController.text = loggedinUserCareProvider!.firstName ?? '';
    lastNameController.text = loggedinUserCareProvider!.lastName ?? '';
    dateOfBirthController.text = loggedinUserCareProvider!.dateOfBirth ?? '';
    phoneNoController.text = loggedinUserCareProvider!.phoneNo ?? '';
    addressController.text = loggedinUserCareProvider!.address ?? '';
    emergencyContactController.text =
        loggedinUserCareProvider!.emergencyContact ?? '';
    ssnController.text = loggedinUserCareProvider!.ssn ?? '';
    licenseNoController.text = loggedinUserCareProvider!.licenseNumber ?? '';
    licenseExpController.text = loggedinUserCareProvider!.licenseExpiry ?? '';
    workExpController.text = loggedinUserCareProvider!.workExperience ?? '';
    jobRoleController.text = loggedinUserCareProvider!.jobRole ?? '';
    jobTitleController.text = loggedinUserCareProvider!.jobTitle ?? '';
    prefferedShiftController.text =
        loggedinUserCareProvider!.prefferedShifft ?? '';
    availablityController.text = loggedinUserCareProvider!.availablity ?? '';
    referencesController.text = loggedinUserCareProvider!.reference ?? '';
    serviceCategoryController.text =
        loggedinUserCareProvider!.serviceCategory ?? '';
    typesOfServiceController.text =
        loggedinUserCareProvider!.typeOfService ?? '';
    // selectedvalue = loggedinUserCareProvider!.l??'';
    super.initState();
  }

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // heyloginheredQu (19:94)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 7.13 * fem, 36.87 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width,
                        ),
                        child: Text(
                          'Your Profile',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   // image3vQ1 (19:96)
                      //   width: 104.26 * fem,
                      //   height: 104.26 * fem,
                      //   child: Image.asset(
                      //     'assets/page-2/images/image-3.png',
                      //     fit: BoxFit.cover,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.width * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => setState(() {
                          showIndex = 0;
                        }),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: MediaQuery.of(context).size.width * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (showIndex == 0)
                                ? primaryColorLight
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Personal\nInformation',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: (showIndex == 0)
                                    ? const Color(0xffffffff)
                                    : primaryColorLight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          showIndex = 1;
                        }),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: MediaQuery.of(context).size.width * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (showIndex == 1)
                                ? primaryColorLight
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'License\nDetails',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: (showIndex == 1)
                                    ? const Color(0xffffffff)
                                    : primaryColorLight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          showIndex = 2;
                        }),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: MediaQuery.of(context).size.width * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (showIndex == 2)
                                ? primaryColorLight
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'More\nDetails',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
                                color: (showIndex == 2)
                                    ? const Color(0xffffffff)
                                    : primaryColorLight,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: primaryColorLight,
                    radius: 50,
                    child: const Icon(
                      Icons.person_2_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                (showIndex == 0)
                    ? buildPersonalInfo(fem, ffem)
                    : (showIndex == 1)
                        ? buildLicenseDetails(fem, ffem)
                        : buildMoreDetails(fem, ffem),
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
                        'Save',
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
      bottomNavigationBar: bottomBarCareProvider(fem, ffem, context, 3),
    );
  }

  Column buildPersonalInfo(double fem, double ffem) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: const Color(0xff009900)),
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
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: const Color(0xff009900)),
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    width: 138 * fem,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                top: 29 * fem,
                child: Align(
                  child: SizedBox(
                    width: 300 * fem,
                    height: 18 * fem,
                    child: TextField(
                        controller: phoneNoController,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    child: TextField(
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
            ],
          ),
        ),
        Container(
          // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    width: 135 * fem,
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
                top: 29 * fem,
                child: Align(
                  child: SizedBox(
                    width: 300 * fem,
                    height: 18 * fem,
                    child: TextField(
                        controller: emergencyContactController,
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
        // Container(
        //   // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
        //   margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
        //   width: double.infinity,
        //   height: 56 * fem,
        //   child: Stack(
        //     children: [
        //       Positioned(
        //         // rectangle7fTP (19:104)
        //         left: 0 * fem,
        //         top: 11 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 340 * fem,
        //             height: 45 * fem,
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10 * fem),
        //                 border: Border.all(color: const Color(0xff009900)),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         // rectangle8mmK (19:105)
        //         left: 14 * fem,
        //         top: 3 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 83 * fem,
        //             height: 15 * fem,
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(5 * fem),
        //                 color: const Color(0xffecf1fa),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         // passwordh9B (19:106)
        //         left: 27 * fem,
        //         top: 0 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 75 * fem,
        //             height: 18 * fem,
        //             child: Text(
        //               'Password',
        //               style: SafeGoogleFont(
        //                 'Poppins',
        //                 fontSize: 12 * ffem,
        //                 fontWeight: FontWeight.w500,
        //                 height: 1.5 * ffem / fem,
        //                 color: const Color(0xff000000),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         // bVT (19:107)
        //         left: 27 * fem,
        //         top: 18 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 300 * fem,
        //             height: 25 * fem,
        //             child: Row(
        //               children: [
        //                 Expanded(
        //                   child: TextField(
        //                       style: SafeGoogleFont(
        //                         'Poppins',
        //                         fontSize: 12 * ffem,
        //                         fontWeight: FontWeight.w500,
        //                         height: 1.5 * ffem / fem,
        //                         color: const Color(0xff000000),
        //                       ),
        //                       decoration: const InputDecoration(
        //                         border: InputBorder.none,
        //                       )),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.only(top: 5.0),
        //                   child: Icon(
        //                     Icons.visibility_off,
        //                     size: 20,
        //                   ),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        //   // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
        //   margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
        //   width: double.infinity,
        //   height: 56 * fem,
        //   child: Stack(
        //     children: [
        //       Positioned(
        //         // rectangle7fTP (19:104)
        //         left: 0 * fem,
        //         top: 11 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 340 * fem,
        //             height: 45 * fem,
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10 * fem),
        //                 border: Border.all(color: const Color(0xff009900)),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         // rectangle8mmK (19:105)
        //         left: 14 * fem,
        //         top: 3 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 83 * fem,
        //             height: 15 * fem,
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(5 * fem),
        //                 color: const Color(0xffecf1fa),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         // passwordh9B (19:106)
        //         left: 27 * fem,
        //         top: 0 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 150 * fem,
        //             height: 18 * fem,
        //             child: Text(
        //               'Repeat Password',
        //               style: SafeGoogleFont(
        //                 'Poppins',
        //                 fontSize: 12 * ffem,
        //                 fontWeight: FontWeight.w500,
        //                 height: 1.5 * ffem / fem,
        //                 color: const Color(0xff000000),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         // bVT (19:107)
        //         left: 27 * fem,
        //         top: 18 * fem,
        //         child: Align(
        //           child: SizedBox(
        //             width: 300 * fem,
        //             height: 25 * fem,
        //             child: Row(
        //               children: [
        //                 Expanded(
        //                   child: TextField(
        //                       style: SafeGoogleFont(
        //                         'Poppins',
        //                         fontSize: 12 * ffem,
        //                         fontWeight: FontWeight.w500,
        //                         height: 1.5 * ffem / fem,
        //                         color: const Color(0xff000000),
        //                       ),
        //                       decoration: const InputDecoration(
        //                         border: InputBorder.none,
        //                       )),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.only(top: 5.0),
        //                   child: Icon(
        //                     Icons.visibility_off,
        //                     size: 20,
        //                   ),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }

  buildLicenseDetails(double fem, double ffem) {
    return Column(
      children: [
        Container(
          // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    width: 220 * fem,
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
                    width: 200 * fem,
                    height: 18 * fem,
                    child: Text(
                      'Social Security Number (SSN)',
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
                        controller: ssnController,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    width: 120 * fem,
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
                    width: 200 * fem,
                    height: 18 * fem,
                    child: Text(
                      'License Type',
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
                top: 25 * fem,
                child: Align(
                  child: SizedBox(
                      width: 300 * fem,
                      height: 18 * fem,
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isExpanded: true,
                              value: selectedvalue,
                              dropdownColor: backgroundColor,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedvalue = newValue!;
                                });
                              },
                              items: services.map((String value) {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: const Color(0xff009900)),
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
                        width: 100 * fem,
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
                        width: 90 * fem,
                        height: 18 * fem,
                        child: Text(
                          'License Number',
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
                            controller: licenseNoController,
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
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: const Color(0xff009900)),
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
                        width: 120 * fem,
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
                        width: 90 * fem,
                        height: 18 * fem,
                        child: Text(
                          'License Exp Date',
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
                            controller: licenseExpController,
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
      ],
    );
  }

  buildMoreDetails(double fem, double ffem) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // autogroupjytdTaH (5yPZWo35wT7GVN2TXWJytD)
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: const Color(0xff009900)),
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
                        child: TextField(
                            controller: workExpController,
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
              margin:
                  EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: const Color(0xff009900)),
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
                        child: TextField(
                            controller: jobRoleController,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 31 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    child: TextField(
                        controller: jobTitleController,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    child: TextField(
                        controller: prefferedShiftController,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    child: TextField(
                        controller: availablityController,
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    height: 25 * fem,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                              controller: serviceCategoryController,
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
                        // const Padding(
                        //   padding: EdgeInsets.only(top: 5.0),
                        //   child: Icon(
                        //     Icons.visibility_off,
                        //     size: 20,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          // autogroupsgxjjZj (5yPZg86sir1iwbtzvSsgXj)
          margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 7.13 * fem, 20 * fem),
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
                        border: Border.all(color: const Color(0xff009900)),
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
                    height: 25 * fem,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                              controller: typesOfServiceController,
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
                        // const Padding(
                        //   padding: EdgeInsets.only(top: 5.0),
                        //   child: Icon(
                        //     Icons.visibility_off,
                        //     size: 20,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  checkValues(BuildContext context) async {
    showLoadingDialog(context, 'Updating Profile...');
    String workExp = workExpController.text.trim();
    String jobRole = jobRoleController.text.trim();
    String jobTitle = jobTitleController.text.trim();
    String prefferedShift = prefferedShiftController.text.trim();
    String availablity = availablityController.text.trim();
    String references = referencesController.text.trim();
    String serviceCategory = serviceCategoryController.text.trim();
    String typesOfService = typesOfServiceController.text.trim();
    String charges = chargesController.text.trim();
    String ssn = ssnController.text.trim();
    String licenseNo = licenseNoController.text.trim();
    String licenseExp = licenseExpController.text.trim();
    String email = emailController.text.trim();
    String firstName = firstNameController.text.trim();
    String lastName = lastNameController.text.trim();
    String dateOfBirth = dateOfBirthController.text.trim();
    String phoneNo = phoneNoController.text.trim();
    String address = addressController.text.trim();
    String emergencyContact = emergencyContactController.text.trim();

    if (workExp.isEmpty ||
        jobRole.isEmpty ||
        jobTitle.isEmpty ||
        prefferedShift.isEmpty ||
        availablity.isEmpty ||
        references.isEmpty ||
        serviceCategory.isEmpty ||
        typesOfService.isEmpty ||
        ssn.isEmpty ||
        licenseNo.isEmpty ||
        licenseExp.isEmpty ||
        email.isEmpty ||
        firstName.isEmpty ||
        lastName.isEmpty ||
        dateOfBirth.isEmpty ||
        phoneNo.isEmpty ||
        address.isEmpty ||
        emergencyContact.isEmpty) {
      showCustomSnackbar(
          context: context, content: 'Please fill all the required field!');
      Navigator.pop(context);
    } else {
      CareProviderModel careProviderModel = loggedinUserCareProvider!;
      careProviderModel.workExperience = workExp;
      careProviderModel.jobRole = jobRole;
      careProviderModel.jobTitle = jobTitle;
      careProviderModel.prefferedShifft = prefferedShift;
      careProviderModel.availablity = availablity;
      careProviderModel.reference = references;
      careProviderModel.serviceCategory = serviceCategory;
      careProviderModel.typeOfService = typesOfService;
      careProviderModel.charges = charges;
      careProviderModel.ssn = ssn;
      careProviderModel.licenseNumber = licenseNo;
      careProviderModel.licenseExpiry = licenseExp;

      careProviderModel.email = email;
      careProviderModel.firstName = firstName;
      careProviderModel.lastName = lastName;
      careProviderModel.dateOfBirth = dateOfBirth;
      careProviderModel.phoneNo = phoneNo;
      careProviderModel.address = address;
      careProviderModel.emergencyContact = emergencyContact;
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
            const MainScreenCareProvider(),
          );
        },
      );
    }
  }
}
