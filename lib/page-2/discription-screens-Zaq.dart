import 'package:flutter/material.dart';
import 'package:myapp/page-2/main-screen.dart';
import 'package:myapp/utils.dart';

class DiscriptionScreen3 extends StatelessWidget {
  const DiscriptionScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // discriptionscreensiC1 (20:335)
          padding: EdgeInsets.fromLTRB(45*fem, 76*fem, 45*fem, 0*fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffecf1fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup1xnd2Tb (5yPfhx3ya9vpua5JFj1xnd)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 77*fem),
                width: double.infinity,
                height: 321*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse2Mkm (20:337)
                      left: 20*fem,
                      top: 21*fem,
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
                      // rectangle12sUD (20:339)
                      left: 0*fem,
                      top: 270*fem,
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
                      // imageprofessionalo6y (16:24)
                      left: 30*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 280*fem,
                          height: 280*fem,
                          child: Image.asset(
                            'assets/page-2/images/image-professional.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupgjlhiDw (5yPfos3nijcJ2tBxoMgJLh)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 91*fem),
                padding: EdgeInsets.fromLTRB(12.5*fem, 41*fem, 13.5*fem, 53*fem),
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
                  // connectwithvariousqualifiedcar (20:346)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints (
                        maxWidth: 314*fem,
                      ),
                      child: Text(
                        'Connect with various qualified care\nproviders for daily living aids. We serve\nour clients at a faster operational\ntempo. and secure communication\nguarantee a seamless experience.',
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
                // autogroupvtuvpRP (5yPfsrw8Lm94WhZd7UVTUV)
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ellipse3Ak9 (20:341)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // ellipse4hk5 (20:342)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Container(
                      // ellipse5e9X (20:343)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 265*fem, 0*fem),
                      width: 10*fem,
                      height: 10*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        color: const Color(0xff7bcc70),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => navigate(context, const HomePage()),
                      child: Text(
                        // finishyBo (20:344)
                        'Finish',
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