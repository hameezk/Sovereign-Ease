import 'package:flutter/material.dart';
import 'package:myapp/page-2/discription-screens-PNy.dart';
import 'package:myapp/utils.dart';

class DiscriptionScreen1 extends StatelessWidget {
  const DiscriptionScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // discriptionscreensvBB (20:302)
          padding: EdgeInsets.fromLTRB(45 * fem, 80 * fem, 45 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupmkks2k1 (5yPdTgThkTjAwsf2QjMkKs)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 77 * fem),
                width: double.infinity,
                height: 317 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse2xdf (20:318)
                      left: 20 * fem,
                      top: 17 * fem,
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
                      // rectangle12GPT (20:319)
                      left: 0 * fem,
                      top: 266 * fem,
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
                      // image11BmK (112:25)
                      left: 30 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 280 * fem,
                          height: 280 * fem,
                          child: Image.asset(
                            'assets/page-2/images/image-11.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroup25sww8D (5yPdZbTWu3Qe5BmgxN25sw)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 91 * fem),
                padding:
                    EdgeInsets.fromLTRB(15 * fem, 41 * fem, 16 * fem, 53 * fem),
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
                  // easilyrequestservicesfromsover (20:320)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 309 * fem,
                      ),
                      child: Text(
                        'Easily request services from Sovereign\nEase Home Care through their user-\nfriendly website or App. direct care\nnurse’s, accompaniments, respite\nservices, we covered.',
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
                // autogroupqf1jRxV (5yPddbLrX4wQZ19MGUqF1j)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse3Av5 (20:321)
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
                      // ellipse4VxM (20:322)
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
                      // ellipse5pjj (20:323)
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
                      onTap: () =>
                          navigate(context, const DiscriptionScreen2()),
                      child: Text(
                        // skipx5F (20:324)
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
