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
        // servicetypedetailsiU1 (57:323)
        padding: EdgeInsets.fromLTRB(25*fem, 41*fem, 25*fem, 39*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // downbuttonRNR (57:324)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 345*fem, 38*fem),
              width: 35*fem,
              height: 35*fem,
              child: Image.asset(
                'assets/page-2/images/down-button-1Qd.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              // autogroupaua59JR (5yPbeEVQVWrwoCvyftAUA5)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 12.74*fem, 8.74*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // detailsTpu (57:325)
                    margin: EdgeInsets.fromLTRB(0*fem, 15.74*fem, 106*fem, 0*fem),
                    child: Text(
                      'Details:',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 36*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // image10Ngy (58:386)
                    width: 104.26*fem,
                    height: 104.26*fem,
                    child: Image.asset(
                      'assets/page-2/images/image-10.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // inhomecareservicesWYH (58:449)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 26*fem),
              child: Text(
                'In-Home Care Services:',
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 25*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupepdwR9T (5yPbjKBGoWPazPbNz5EpDw)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 316*fem),
              padding: EdgeInsets.fromLTRB(20*fem, 19*fem, 19*fem, 30*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 2*fem),
                    blurRadius: 3*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // inhomecareservicesHhT (58:388)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 25*fem),
                    child: Text(
                      'In-Home Care Services:',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5*ffem/fem,
                        color: Color(0xff009900),
                      ),
                    ),
                  ),
                  Container(
                    // asahealthcareprofessionalyoull (58:389)
                    constraints: BoxConstraints (
                      maxWidth: 341*fem,
                    ),
                    child: Text(
                      'As a healthcare professional, you\'ll have the\nopportunity to provide vital services directly to\npatients in the comfort of their homes. This\nincludes tasks like medication administration,\nwound care, mobility assistance, and monitoring\nvital signs. Customize care plans based on each\npatient\'s unique needs.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // buttonzVP (57:332)
              margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 45*fem, 0*fem),
              width: double.infinity,
              height: 35*fem,
              decoration: BoxDecoration (
                color: Color(0xff7bcc70),
                borderRadius: BorderRadius.circular(5*fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0*fem, 3*fem),
                    blurRadius: 2.5*fem,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Done',
                  style: SafeGoogleFont (
                    'Poppins',
                    fontSize: 14*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}