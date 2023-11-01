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
        // servicetypedetailso8d (58:461)
        padding: EdgeInsets.fromLTRB(25*fem, 41*fem, 25*fem, 39*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // downbuttonJr5 (58:462)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 345*fem, 38*fem),
              width: 35*fem,
              height: 35*fem,
              child: Image.asset(
                'assets/page-2/images/down-button-5vZ.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              // autogroupxp45qLD (5yPcS8LbrMr5ignFLgxP45)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 12.74*fem, 8.74*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // detailsZn1 (58:463)
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
                    // image10t3b (58:468)
                    width: 104.26*fem,
                    height: 104.26*fem,
                    child: Image.asset(
                      'assets/page-2/images/image-10-EkR.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // outpatientclinicservicesRZK (58:464)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 28*fem),
              child: Text(
                'Outpatient Clinic Services:',
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogrouppis3Y89 (5yPcXdBSaeT8swAnGbpis3)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 369*fem),
              padding: EdgeInsets.fromLTRB(21*fem, 19*fem, 22*fem, 24*fem),
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
                    // outpatientclinicservicespLZ (58:470)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    child: Text(
                      'Outpatient Clinic Services:',
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
                    // inoutpatientclinicsyoulloperat (58:471)
                    constraints: BoxConstraints (
                      maxWidth: 337*fem,
                    ),
                    child: Text(
                      ' In outpatient clinics, you\'ll operate within regular\nbusiness hours, catering to patients who visit\nthe clinic for various healthcare services. Expect\nto provide a wide range of care, similar to a\ndoctor\'s office setting.',
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
              // buttonAYq (58:465)
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