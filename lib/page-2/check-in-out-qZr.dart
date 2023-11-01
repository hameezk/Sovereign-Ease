import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // checkinoutKdr (657:1822)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupzg8q2oA (MxjYKCGq1ekZkQbZxcZg8Q)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
              padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 93*fem, 16*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff7bcc70),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // backvNk (657:1824)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 41*fem),
                    width: 35*fem,
                    height: 35*fem,
                    child: Image.asset(
                      'assets/page-2/images/back-M9a.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // checkincheckouteJk (657:1825)
                    margin: EdgeInsets.fromLTRB(0*fem, 51*fem, 0*fem, 0*fem),
                    child: Text(
                      'Check-in & Check-out',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // ellipse14XtL (657:2107)
                    margin: EdgeInsets.fromLTRB(0*fem, 28*fem, 0*fem, 0*fem),
                    width: 8*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(4*fem),
                      color: Color(0xfffd2121),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // activeservicesF3e (657:1847)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 2*fem),
              child: Text(
                'Active Services',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 15*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2175*ffem/fem,
                  color: Color(0xff7bcc70),
                ),
              ),
            ),
            Container(
              // vector105992 (657:1925)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
              width: 117*fem,
              height: 0*fem,
              child: Image.asset(
                'assets/page-2/images/vector-105.png',
                width: 117*fem,
                height: 0*fem,
              ),
            ),
            Container(
              // autogrouprtvnFxk (MxjYcmbstUZbwX3ukRRtVN)
              padding: EdgeInsets.fromLTRB(46*fem, 15*fem, 45*fem, 303*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group21NnU (657:2117)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    padding: EdgeInsets.fromLTRB(10*fem, 4.97*fem, 10*fem, 4.97*fem),
                    width: double.infinity,
                    height: 87*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 1*fem),
                          blurRadius: 1.5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupc2zt2s2 (MxjZ2bFX3iWqdbQDn3C2zt)
                          margin: EdgeInsets.fromLTRB(0*fem, 11.03*fem, 20*fem, 6.03*fem),
                          padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 7*fem, 7*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Center(
                            // doctormaleskintype2jmS (657:2104)
                            child: SizedBox(
                              width: 46*fem,
                              height: 46*fem,
                              child: Image.asset(
                                'assets/page-2/images/doctor-male-skin-type-2-84Q.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupqwc4TxL (MxjZBLVwqu7WvweyiAqwc4)
                          margin: EdgeInsets.fromLTRB(0*fem, 11.03*fem, 72*fem, 6.03*fem),
                          width: 160*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupx1bvNZW (MxjZPfUjqpAYk3ZGLhX1bv)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // drstrangetnk (657:2093)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        'Dr. Strange',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // Qm6 (657:2096)
                                      margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xb2000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '(',
                                            ),
                                            TextSpan(
                                              text: '\$1200',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175*ffem/fem,
                                                color: Color(0xff7bcc70),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ')',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // certifiednursingassistants7ov (657:2094)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 4*fem),
                                child: Text(
                                  'Certified Nursing Assistants',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupzwhnR3v (MxjZZaMtcRNnMB3bCSzWHn)
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // starkrt (657:2098)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-rWC.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starVpU (657:2099)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-ye8.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starFYk (657:2100)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-jPW.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starbsW (657:2101)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-THi-2rc.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starm1J (657:2097)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-tW4.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // J1E (657:2095)
                                      '(1398)',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xb2000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupdrzaeKz (Mxja24bkrM1s2TeLmUdRZA)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.03*fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // bell1tracedajS (657:2113)
                                margin: EdgeInsets.fromLTRB(0.05*fem, 0*fem, 0*fem, 49.97*fem),
                                width: 5.95*fem,
                                height: 8.06*fem,
                                child: Image.asset(
                                  'assets/page-2/images/bell-1-traced.png',
                                  width: 5.95*fem,
                                  height: 8.06*fem,
                                ),
                              ),
                              Container(
                                // vectorHNx (657:2109)
                                width: 7*fem,
                                height: 10*fem,
                                child: Image.asset(
                                  'assets/page-2/images/vector-KkL.png',
                                  width: 7*fem,
                                  height: 10*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupdajabuS (MxjYTwXFoqMF3krKtkDaja)
                    margin: EdgeInsets.fromLTRB(121*fem, 0*fem, 122*fem, 9*fem),
                    width: double.infinity,
                    height: 19*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // oldservicesX2Q (657:1848)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 96*fem,
                              height: 19*fem,
                              child: Text(
                                'Old Services',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff7bcc70),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // vector106R7n (657:1926)
                          left: 0*fem,
                          top: 17*fem,
                          child: Align(
                            child: SizedBox(
                              width: 96*fem,
                              height: 0*fem,
                              child: Image.asset(
                                'assets/page-2/images/vector-106.png',
                                width: 96*fem,
                                height: 0*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group22Kyr (657:2118)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    padding: EdgeInsets.fromLTRB(10*fem, 16*fem, 10*fem, 11*fem),
                    width: double.infinity,
                    height: 87*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 1*fem),
                          blurRadius: 1.5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup6fm2CGx (Mxjac8TKv2e4hKGHM26fM2)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 7*fem, 7*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Center(
                            // doctormaleskintype2WHe (657:2130)
                            child: SizedBox(
                              width: 46*fem,
                              height: 46*fem,
                              child: Image.asset(
                                'assets/page-2/images/doctor-male-skin-type-2-9se.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupcbknSBJ (MxjajxZcbAUEU87x8AcBKN)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                          width: 160*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupjqepxfS (Mxjay32A9D4QcwXg4bJqep)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // drstrangeu4t (657:2121)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        'Dr. Strange',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // 29W (657:2124)
                                      margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xb2000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '(',
                                            ),
                                            TextSpan(
                                              text: '\$1200',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175*ffem/fem,
                                                color: Color(0xff7bcc70),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ')',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // certifiednursingassistantsyix (657:2122)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 4*fem),
                                child: Text(
                                  'Certified Nursing Assistants',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupnmha6Yg (Mxjb67ehGDMS42suXqnmHa)
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // stareaC (657:2126)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-tor.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // staroCC (657:2127)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-KFN.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starMDi (657:2128)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-BFN.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starhYU (657:2129)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-mtk.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // star36Y (657:2125)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-UgQ.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // Nec (657:2123)
                                      '(1398)',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xb2000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // vectorL5e (657:2131)
                          margin: EdgeInsets.fromLTRB(0*fem, 44*fem, 0*fem, 0*fem),
                          width: 7*fem,
                          height: 10*fem,
                          child: Image.asset(
                            'assets/page-2/images/vector-cbJ.png',
                            width: 7*fem,
                            height: 10*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group23es2 (657:2137)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                    padding: EdgeInsets.fromLTRB(10*fem, 16*fem, 10*fem, 11*fem),
                    width: double.infinity,
                    height: 87*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 1*fem),
                          blurRadius: 1.5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup2h2xuY4 (MxjbsvfhLbitP6nMH72H2x)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 7*fem, 7*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Center(
                            // doctormaleskintype2cBa (657:2149)
                            child: SizedBox(
                              width: 46*fem,
                              height: 46*fem,
                              child: Image.asset(
                                'assets/page-2/images/doctor-male-skin-type-2-9sv.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup4bplLtG (Mxjc168Rk4dbQc5Qfu4bpL)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                          width: 160*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupw5di55A (MxjcD5nSc9Dtr4CPcFW5Di)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // drstrange1Uc (657:2140)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        'Dr. Strange',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // vrU (657:2143)
                                      margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xb2000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '(',
                                            ),
                                            TextSpan(
                                              text: '\$1200',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175*ffem/fem,
                                                color: Color(0xff7bcc70),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ')',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // certifiednursingassistantsVHJ (657:2141)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 4*fem),
                                child: Text(
                                  'Certified Nursing Assistants',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogrouphd52PtU (MxjcKASeKe8jACChzyHD52)
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // starjSY (657:2145)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-9mS.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starfLC (657:2146)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-eoA.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starC5E (657:2147)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-S4Q.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starjax (657:2148)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-JVN.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starh1z (657:2144)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-UmW.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // 1oN (657:2142)
                                      '(1398)',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xb2000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // vectormGk (657:2150)
                          margin: EdgeInsets.fromLTRB(0*fem, 44*fem, 0*fem, 0*fem),
                          width: 7*fem,
                          height: 10*fem,
                          child: Image.asset(
                            'assets/page-2/images/vector-YjJ.png',
                            width: 7*fem,
                            height: 10*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group24tsA (657:2156)
                    padding: EdgeInsets.fromLTRB(10*fem, 16*fem, 10*fem, 11*fem),
                    width: double.infinity,
                    height: 87*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(1*fem, 1*fem),
                          blurRadius: 1.5*fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupxkcgajz (Mxjd44NqTxyHip2ESBxkcg)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 7*fem, 7*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Center(
                            // doctormaleskintype2Vc4 (657:2168)
                            child: SizedBox(
                              width: 46*fem,
                              height: 46*fem,
                              child: Image.asset(
                                'assets/page-2/images/doctor-male-skin-type-2-Zex.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup7shjDY4 (MxjdBPVxSM7Mw9Cwg57shJ)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                          width: 160*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogrouprzke8uv (MxjdNPBdtvKUFdz1XtrZKE)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // drstrangeGmE (657:2159)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                      child: Text(
                                        'Dr. Strange',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 20*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // zSL (657:2162)
                                      margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xb2000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '(',
                                            ),
                                            TextSpan(
                                              text: '\$1200',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175*ffem/fem,
                                                color: Color(0xff7bcc70),
                                              ),
                                            ),
                                            TextSpan(
                                              text: ')',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // certifiednursingassistantsBFv (657:2160)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 4*fem),
                                child: Text(
                                  'Certified Nursing Assistants',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupyvctV1i (MxjdV3fCbdY5ifc7PRYVCt)
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // starcc8 (657:2164)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-SmN.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starmE8 (657:2165)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-Wnt.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starvMv (657:2166)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-yz8.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starHCU (657:2167)
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-NBr.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Container(
                                      // starS5N (657:2163)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                      width: 15*fem,
                                      height: 15*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-gjS.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Text(
                                      // Zvg (657:2161)
                                      '(1398)',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xb2000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // vectorioa (657:2169)
                          margin: EdgeInsets.fromLTRB(0*fem, 44*fem, 0*fem, 0*fem),
                          width: 7*fem,
                          height: 10*fem,
                          child: Image.asset(
                            'assets/page-2/images/vector-CBz.png',
                            width: 7*fem,
                            height: 10*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group1346k (657:2027)
              padding: EdgeInsets.fromLTRB(29*fem, 15*fem, 30*fem, 12*fem),
              width: double.infinity,
              height: 70*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff7bcc70)),
                color: Color(0xffffffff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupery2wAY (MxjfX9w4zKv5461kSyeRy2)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // layer2Sd6 (657:2036)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/layer-2-S4g.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // homeiac (657:2044)
                          'Home',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xffb7b7b7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupta9v376 (Mxjfdz52FxN3hwXW9bTA9v)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupxzk (657:2038)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-Abr.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // notificationtdW (657:2045)
                          'Notification',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xffb7b7b7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupej1eS9E (Mxjfk4jDyTGt25XpYKEJ1E)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group6N2t (657:2029)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-6-Za8.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // checkinoutfng (657:2046)
                          'Check-in/out',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff7bcc70),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupf2xpQkG (MxjfqeQFzCVcmjsBPmf2xp)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorwEQ (657:2049)
                          margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/vector-K7n.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // searchTyS (657:2047)
                          'Search',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xffb7b7b7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupc9gkQNt (MxjfzDzJDTrvtGEHUpC9Gk)
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupxfJ (657:2041)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-hDJ.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // profileGfz (657:2048)
                          'Profile',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 10*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xffb7b7b7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}