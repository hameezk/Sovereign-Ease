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
        // servicetypedetails6MP (58:450)
        padding: EdgeInsets.fromLTRB(25*fem, 41*fem, 25*fem, 39*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // downbuttonoFo (58:451)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 345*fem, 38*fem),
              width: 35*fem,
              height: 35*fem,
              child: Image.asset(
                'assets/page-2/images/down-button-gSV.png',
                fit: BoxFit.contain,
              ),
            ),
            Container(
              // autogroup1pdfLFj (5yPc3UKgfYWQLPfWEh1pdF)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 12.74*fem, 8.74*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // detailssFf (58:452)
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
                    // image10PUu (58:457)
                    width: 104.26*fem,
                    height: 104.26*fem,
                    child: Image.asset(
                      'assets/page-2/images/image-10-DZs.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // healthcarefacilitiesservices8S (58:453)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 31*fem),
              child: Text(
                'Healthcare Facilities Services:',
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 22*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupzxjt33f (5yPc98puxkLpgTwh1gzxjT)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 355*fem),
              padding: EdgeInsets.fromLTRB(19*fem, 21*fem, 19*fem, 23*fem),
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
                    // healthcarefacilitiesservicesif (58:459)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: Text(
                      'Healthcare Facilities Services:',
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
                    // ifyoureworkingwithinahealthcar (58:460)
                    constraints: BoxConstraints (
                      maxWidth: 342*fem,
                    ),
                    child: Text(
                      'If you\'re working within a healthcare facility, you\'ll\nplay a crucial role in providing care on-site. Shift\nlengths can vary to match facility needs, and\nyou\'ll have the chance to care for multiple\npatients or residents, offering a diverse and\noften more intensive environment.',
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
              // button3LV (58:454)
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