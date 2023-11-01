import 'package:flutter/material.dart';
import 'package:myapp/page-2/sign-in.dart';
import 'package:myapp/utils.dart';

import '../main.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // splashscreen1Mx5 (7:175)
          width: double.infinity,
          height: 932 * fem,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Stack(
            children: [
              Positioned(
                // autogrouptn1whW9 (5yPXGrmbFbNLuKPVNgtN1w)
                left: 50 * fem,
                top: 108 * fem,
                child: SizedBox(
                  width: 407 * fem,
                  height: 142 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // whatsappimage20230902at3201cND (5:79)
                        left: 4 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 322 * fem,
                            height: 90 * fem,
                            child: Image.asset(
                              'assets/page-2/images/whatsappimage2023-09-02at320-1.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // sovereigneaseucD (19:67)
                        left: 41 * fem,
                        top: 78 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 231 * fem,
                            height: 41 * fem,
                            child: Text(
                              'SOVEREIGN EASE',
                              style: SafeGoogleFont(
                                'Baloo Chettan',
                                fontSize: 32 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                color: const Color(0xff009900),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // homecaresupportserviceszNm (19:73)
                        left: 0 * fem,
                        top: 112 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 407 * fem,
                            height: 30 * fem,
                            child: Text(
                              'HOMECARE, SUPPORT SERVICES',
                              style: SafeGoogleFont(
                                'Baloo Bhai 2',
                                fontSize: 24 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff009900),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupotw547j (5yPXPrZw693gjzntvPotW5)
                left: 0 * fem,
                top: 339 * fem,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * fem,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            isClient = !isClient;
                          }),
                          child: Column(
                            children: [
                              Text(
                                '  I\'m a staff member',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: !(isClient)
                                      ? const Color(0xff009900)
                                      : const Color(0xff7bcc70),
                                ),
                              ),
                              !(isClient)
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/line.png',
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Container(
                                      height: 0,
                                    ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/verticalLine.png',
                          fit: BoxFit.cover,
                        ),
                        GestureDetector(
                          onTap: () => setState(() {
                            isClient = !isClient;
                          }),
                          child: Column(
                            children: [
                              Text(
                                // iamclient4X3 (17:28)
                                'I\'m service seeker',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: !(isClient)
                                      ? const Color(0xff7bcc70)
                                      : const Color(0xff009900),
                                ),
                              ),
                              (isClient)
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/images/line.png',
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Container(
                                      height: 0,
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              (isClient)
                  ? buildStaffBody(fem, ffem, context)
                  : buildServiceSeekerBody(fem, ffem)
            ],
          ),
        ),
      ),
    );
  }

  Stack buildServiceSeekerBody(double fem, double ffem) {
    return Stack(
      children: [
        Positioned(
          // autogroupqrbf6qF (CpDF2E74L6MUsgPXpZQRbf)
          left: 155 * fem,
          top: 430 * fem,
          child: Container(
            padding:
                EdgeInsets.fromLTRB(17 * fem, 17 * fem, 18 * fem, 18 * fem),
            width: 120 * fem,
            height: 120 * fem,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(60 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 3 * fem),
                  blurRadius: 5 * fem,
                ),
              ],
            ),
            child: Center(
              // image2YhF (18:55)
              child: SizedBox(
                width: 85 * fem,
                height: 85 * fem,
                child: Image.asset(
                  'assets/page-2/images/image-2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // autogroup1auzTZK (CpDF6e9NNQxfKZVKkQ1aUZ)
          left: 41 * fem,
          top: 576 * fem,
          child: Container(
            padding:
                EdgeInsets.fromLTRB(28.5 * fem, 19 * fem, 30.5 * fem, 73 * fem),
            width: 348 * fem,
            height: 297 * fem,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(5 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 3 * fem),
                  blurRadius: 5 * fem,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // welcomevaluecustomerhyT (17:49)
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 13 * fem),
                  child: Text(
                    'Welcome, Value Customer!',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff7bcc70),
                    ),
                  ),
                ),
                Container(
                  // welcometosoveaseappisasmartand (17:48)
                  constraints: BoxConstraints(
                    maxWidth: 289 * fem,
                  ),
                  child: Text(
                    'Welcome to SOVEASEAPP,is a smart and free mobile application\nthat simplifies booking healthcare\nservices, offering you the best value\nby centralizing all your healthcare\nservice bookings in one place.',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff7bcc70),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          // button3R3 (18:57)
          left: 150 * fem,
          top: 813 * fem,
          child: GestureDetector(
            onTap: () => navigate(context, const LoginScreen()),
            child: Container(
              padding: EdgeInsets.fromLTRB(35 * fem, 7 * fem, 5 * fem, 7 * fem),
              width: 130 * fem,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // proceedHKP (17:52)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 16 * fem, 0 * fem),
                    child: Text(
                      'Proceed',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    // forwardb5B (18:56)
                    width: 15 * fem,
                    height: 15 * fem,
                    child: Image.asset(
                      'assets/page-2/images/forward-JZw.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Stack buildStaffBody(double fem, double ffem, BuildContext context) {
    return Stack(
      children: [
        Positioned(
          // autogrouphphjoUd (5yPXYw992A76QzpxYhhPhj)
          left: 155 * fem,
          top: 430 * fem,
          child: Container(
            padding:
                EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
            width: 120 * fem,
            height: 120 * fem,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(60 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 3 * fem),
                  blurRadius: 5 * fem,
                ),
              ],
            ),
            child: Center(
              // image1diZ (17:31)
              child: SizedBox(
                width: 100 * fem,
                height: 100 * fem,
                child: Image.asset(
                  'assets/page-2/images/image-1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // autogroupl8vdATb (5yPXe6fCccFRCbSBnSL8vD)
          left: 45 * fem,
          top: 576 * fem,
          child: Container(
            padding:
                EdgeInsets.fromLTRB(12 * fem, 21 * fem, 12 * fem, 28 * fem),
            width: 340 * fem,
            height: 280 * fem,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(5 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 3 * fem),
                  blurRadius: 5 * fem,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // welcomecareprovidersyfw (17:35)
                  margin:
                      EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 8 * fem),
                  child: Text(
                    'Welcome, valued customers! ',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff7bcc70),
                    ),
                  ),
                ),
                Container(
                  // youcanfindjobassignmentsmanage (17:34)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 47 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 316 * fem,
                  ),
                  child: Text(
                    'Welcome to Sovereign Ease Careers! We\'re a forward-thinking home health care company transforming the industry. We\'re on the lookout for talented individuals to join our staff as we continue to grow and turn our vision into reality.',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff7bcc70),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => navigate(context, const LoginScreen()),
                  child: Container(
                    // buttonvjb (18:63)
                    margin: EdgeInsets.fromLTRB(
                        93 * fem, 0 * fem, 93 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        35 * fem, 7 * fem, 5 * fem, 7 * fem),
                    width: double.infinity,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // proceedCSD (I18:63;17:52)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 16 * fem, 0 * fem),
                          child: Text(
                            'Proceed',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        SizedBox(
                          // forwardiYy (I18:63;18:56)
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/forward-JZw.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
