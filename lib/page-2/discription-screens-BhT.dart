import 'package:flutter/material.dart';
import 'package:myapp/page-2/discription-screens-xkh.dart';
import 'package:myapp/utils.dart';

class CareProviderDiscriptionScreen2 extends StatelessWidget {
  const CareProviderDiscriptionScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // discriptionscreens5X7 (56:290)
          padding: EdgeInsets.fromLTRB(45*fem, 64*fem, 45*fem, 0*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupwhihbEZ (5yPf9xyGbwgh5361knWhiH)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 77*fem),
                width: double.infinity,
                height: 333*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse2iKB (56:292)
                      left: 20*fem,
                      top: 33*fem,
                      child: Align(
                        child: SizedBox(
                          width: 300*fem,
                          height: 300*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(150*fem),
                              color: const Color(0xff7bcc70),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle12pt1 (56:294)
                      left: 0*fem,
                      top: 282*fem,
                      child: Align(
                        child: SizedBox(
                          width: 340*fem,
                          height: 51*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xffecf1fa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image14LrM (112:34)
                      left: 30*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 280*fem,
                          height: 280*fem,
                          child: Image.asset(
                            'assets/page-2/images/image-14.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupb3gmGED (5yPfFsy5kXNACMCgJRB3GM)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 91*fem),
                padding: EdgeInsets.fromLTRB(16*fem, 35*fem, 17*fem, 35*fem),
                width: double.infinity,
                height: 214*fem,
                decoration: BoxDecoration (
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20*fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 5*fem,
                    ),
                  ],
                ),
                child: Center(
                  // wearelookingforindividualswhoa (56:300)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints (
                        maxWidth: 307*fem,
                      ),
                      child: Text(
                        'We seek individuals who are deeply passionate about providing healthcare and support services to people\nof diverse backgrounds. We value those who can offer comprehensive care and have a genuine commitment\nto looking after and caring for others. who share our values and our dedication to helping people. “Our goal\nof care provided in anywhere is to restore or maintain patient physical and mental functioning and quality of life',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          color: const Color(0xff7bcc70),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                // autogroup6zhp9xD (5yPfL3WowU8HrzTzTd6zhP)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse36cZ (56:295)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // ellipse4ECy (56:296)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xff7bcc70),
                      ),
                    ),
                    Container(
                      // ellipse5Zm3 (56:297)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => navigate(context, const CareProviderDiscriptionScreen3()),
                      child: Text(
                        // skipJTj (56:298)
                        'Skip',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          color: const Color(0xff7bcc70),
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
}