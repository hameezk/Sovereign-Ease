import 'package:flutter/material.dart';
import 'package:myapp/page-2/discription-screens-Zaq.dart';
import 'package:myapp/utils.dart';

class DiscriptionScreen2 extends StatelessWidget {
  const DiscriptionScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // discriptionscreensGwj (20:325)
          padding: EdgeInsets.fromLTRB(45 * fem, 86 * fem, 45 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupzqnzbDK (5yPec4ikvC4Epv3ZBPZqnZ)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 77 * fem),
                width: double.infinity,
                height: 311 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse2Kf7 (20:327)
                      left: 20 * fem,
                      top: 11 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 300 * fem,
                          height: 300 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150 * fem),
                              color: const Color(0xff7bcc70),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle12dA1 (20:329)
                      left: 0 * fem,
                      top: 260 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 340 * fem,
                          height: 51 * fem,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffecf1fa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image129PF (112:27)
                      left: 30 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 280 * fem,
                          height: 280 * fem,
                          child: Image.asset(
                            'assets/page-2/images/image-12.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupfnc1UAd (5yPehttNnK82MpDPoUfnC1)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 91 * fem),
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 47 * fem, 10 * fem, 47 * fem),
                width: double.infinity,
                height: 214 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 5 * fem,
                    ),
                  ],
                ),
                child: Center(
                  // discoverareinventingbusinessmo (20:345)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 320 * fem,
                      ),
                      child: Text(
                        'Discover a reinventing business model\nto help. for all demand. 24/7 healthcare\nprofessionals ready to provide\npersonalized, convenient. services\ntailored to your needs.',
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
                  ),
                ),
              ),
              SizedBox(
                // autogroupvybbaN5 (5yPemowX7t37FDeEC3vYBB)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse3X2R (20:331)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 10 * fem,
                      height: 10 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // ellipse4ESd (20:332)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 10 * fem,
                      height: 10 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xff7bcc70),
                      ),
                    ),
                    Container(
                      // ellipse5xdX (20:333)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 274 * fem, 0 * fem),
                      width: 10 * fem,
                      height: 10 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => navigate(
                        context,
                        const DiscriptionScreen3(),
                      ),
                      child: Text(
                        // skipV7f (20:334)
                        'Skip',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
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
