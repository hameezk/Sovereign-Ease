import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/helpers/ui_helper.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/create_account_care_provider3.dart';
import 'package:myapp/page-2/sign-in.dart';
import 'package:myapp/utils.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CreateAccountCareProvider2 extends StatefulWidget {
  final CareProviderModel careProviderModel;
  const CreateAccountCareProvider2(
      {super.key, required this.careProviderModel});

  @override
  State<CreateAccountCareProvider2> createState() =>
      _CreateAccountCareProvider2State();
}

class _CreateAccountCareProvider2State
    extends State<CreateAccountCareProvider2> {
  TextEditingController ssnController = TextEditingController();
  TextEditingController licenseNoController = TextEditingController();
  TextEditingController licenseExpController = TextEditingController();
  List<String> services = [
    'In-Home Care Services',
    'Healthcare Facilities Services',
    'Outpatient Clinic Services',
  ];
  String selectedvalue= 'In-Home Care Services';
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
                      percent: 2 / 3,
                      center: Text(
                        '2 of 3',
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
                      '        License Details',
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
                              'License Type',
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
      ),
    );
  }

  checkValues(BuildContext context) {
    showLoadingDialog(context, 'Signing up...');
    String ssn = ssnController.text.trim();
    String licenseNo = licenseNoController.text.trim();
    String licenseExp = licenseExpController.text.trim();

    if (ssn.isEmpty || licenseNo.isEmpty || licenseExp.isEmpty) {
      showCustomSnackbar(
          context: context, content: 'Please fill all the required field!');
      Navigator.pop(context);
    } else {
      CareProviderModel careProviderModel = widget.careProviderModel;
      careProviderModel.ssn = ssn;
      careProviderModel.licenseNumber = licenseNo;
      careProviderModel.licenseExpiry = licenseExp;
      navigate(
        context,
        CreateAccountCareProvider3(careProviderModel: careProviderModel),
      );
    }
  }
}
