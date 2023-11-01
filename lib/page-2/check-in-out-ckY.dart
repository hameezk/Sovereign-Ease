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
        // checkinoutm4t (655:1614)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup3mj6Ujz (Mxk6cMJ1oUPY2z1NEC3Mj6)
              padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 25*fem, 16*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff7bcc70),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // backo1a (655:1616)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                    width: 35*fem,
                    height: 35*fem,
                    child: Image.asset(
                      'assets/page-2/images/back-iFS.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // checkincheckoutieL (655:1617)
                    margin: EdgeInsets.fromLTRB(75*fem, 0*fem, 0*fem, 0*fem),
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
                ],
              ),
            ),
            Container(
              // autogroupgar4Dqz (Mxk9AMsj4udbNcmdi5gar4)
              padding: EdgeInsets.fromLTRB(45*fem, 20*fem, 45*fem, 172*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupeneckL8 (Mxk6ug8UpvMXSrdEFNENeC)
                    width: double.infinity,
                    height: 335*fem,
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
                    child: Stack(
                      children: [
                        Positioned(
                          // date2He (655:1753)
                          left: 114.5*fem,
                          top: 15*fem,
                          child: Align(
                            child: SizedBox(
                              width: 38*fem,
                              height: 19*fem,
                              child: Text(
                                'Date',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xb2000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupttfa7K6 (Mxk7Nur6cyXkTrjR8HttFA)
                          left: 22*fem,
                          top: 73*fem,
                          child: Container(
                            width: 272.5*fem,
                            height: 20*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // checkinpjJ (655:1777)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 120.5*fem, 1*fem),
                                  child: Text(
                                    'Check-in',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xb2000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // checkoutLxY (655:1785)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Check-out',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xb2000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroup1reqGbJ (Mxk7oEUuUyB5iQkghB1ReQ)
                          left: 22*fem,
                          top: 165*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20*fem, 6*fem, 14*fem, 6*fem),
                            width: 296*fem,
                            height: 30*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffecf1fa),
                              borderRadius: BorderRadius.circular(5*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 1*fem),
                                  blurRadius: 1*fem,
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector7rp (655:1765)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 1*fem),
                                  width: 11*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/vector-n4Q.png',
                                    width: 11*fem,
                                    height: 15*fem,
                                  ),
                                ),
                                Text(
                                  // mainstreettampafl33602usa3Eg (655:1720)
                                  '123 Main Street, Tampa, FL 33602, USA',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffb7b7b7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupymm2ket (Mxk7Fv3knRrQdBL1aayMm2)
                          left: 120.5*fem,
                          top: 42*fem,
                          child: Container(
                            width: 101*fem,
                            height: 16*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // group19fWx (655:1775)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 1*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/group-19-HU4.png',
                                    width: 15*fem,
                                    height: 15*fem,
                                  ),
                                ),
                                Text(
                                  // oct2023mZz (655:1746)
                                  '12-Oct-2023',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 11*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff7bcc70),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupdzoziEL (Mxk7X5HARwpecKNPbcdzoz)
                          left: 27.5*fem,
                          top: 100*fem,
                          child: Container(
                            width: 276.5*fem,
                            height: 16*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // groupDRz (655:1760)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 1*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/group-1ma.png',
                                    width: 15*fem,
                                    height: 15*fem,
                                  ),
                                ),
                                Container(
                                  // amXxU (655:1778)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104.5*fem, 0*fem),
                                  child: Text(
                                    '09:00am',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                                Container(
                                  // grouprUx (655:1787)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 20*fem, 0*fem),
                                  width: 15*fem,
                                  height: 15*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/group-Lz4.png',
                                    width: 15*fem,
                                    height: 15*fem,
                                  ),
                                ),
                                Container(
                                  // pmNiC (655:1786)
                                  margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '07:00pm',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // autogrouptkwaV28 (Mxk7uZdh3qvxonbUrXTkwa)
                          left: 22*fem,
                          top: 205*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10*fem, 5*fem, 10*fem, 5*fem),
                            width: 296*fem,
                            height: 108*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(10*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 1*fem),
                                  blurRadius: 1*fem,
                                ),
                              ],
                            ),
                            child: Text(
                              'Add progress description...',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175*ffem/fem,
                                color: Color(0xffb7b7b7),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // autogroupchtwJEU (Mxk7gQLxDLj74ZEvzZChTW)
                          left: 58*fem,
                          top: 133*fem,
                          child: Container(
                            width: 224*fem,
                            height: 21*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vectorcFA (655:1795)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 8*fem, 0*fem),
                                  width: 10*fem,
                                  height: 10*fem,
                                  child: Image.asset(
                                    'assets/page-2/images/vector-JwA.png',
                                    width: 10*fem,
                                    height: 10*fem,
                                  ),
                                ),
                                Container(
                                  // pleaseenableyourlocationservic (655:1798)
                                  constraints: BoxConstraints (
                                    maxWidth: 206*fem,
                                  ),
                                  child: Text(
                                    'Please enable your location services to allow us to confirm\nyour current live location.',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 7*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // autogroupvheybMz (Mxk8LPFfcbGPcpHhxfvhEY)
                    padding: EdgeInsets.fromLTRB(22*fem, 8*fem, 22*fem, 17*fem),
                    width: double.infinity,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupzbqct6C (Mxk8X8SmDndTA5EJ3rzBQc)
                          margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 0*fem, 6*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // activitytitle2CQ (655:1801)
                                margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 176*fem, 0*fem),
                                child: Text(
                                  'Activity Title',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xb2000000),
                                  ),
                                ),
                              ),
                              Container(
                                // layer2LTz (655:1813)
                                width: 10*fem,
                                height: 10*fem,
                                child: Image.asset(
                                  'assets/page-2/images/layer-2-NJc.png',
                                  width: 10*fem,
                                  height: 10*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupqvncg24 (Mxk8ci7oEXrBujZeuKQvNC)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 30*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupyt7eoMa (Mxk8jHmAenT7nMEvqJYT7E)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 147*fem, 8*fem),
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5*fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(0*fem, 0*fem),
                                      blurRadius: 2.5*fem,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // groupUCp (655:1755)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 1*fem),
                                      width: 13*fem,
                                      height: 13*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-zxQ.png',
                                        width: 13*fem,
                                        height: 13*fem,
                                      ),
                                    ),
                                    Container(
                                      // addactivityaWk (655:1803)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Add Activity',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // addimageVNp (655:1805)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/page-2/images/add-image.png',
                                  width: 25*fem,
                                  height: 25*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnmdiQVn (Mxk8rsNsUYSEmvG7qpNmdi)
                          padding: EdgeInsets.fromLTRB(288*fem, 4*fem, 8*fem, 4.5*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 0*fem),
                                blurRadius: 2.5*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20*fem,
                  ),
                  Container(
                    // group20Tyr (655:1821)
                    margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 25*fem, 0*fem),
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
                        'Submit',
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
            Container(
              // tabbarforcareproviderJUg (655:1648)
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
                    // autogroupgn3az6c (MxkAAkN6zau8J2QqrWGN3A)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // layer2uUU (655:1657)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/layer-2-eBS.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // homed9a (655:1674)
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
                    // autogroupbtxja4p (MxkAHkASq8aU8hpFQDBtXJ)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupKHJ (655:1659)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-V1J.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // notificationqFe (655:1675)
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
                    // autogroupsdzaMzg (MxkAQVUCpJQmC9PBBHSDZa)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group66SU (655:1650)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-6-Xig.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // checkinout1JY (655:1676)
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
                    // autogrouptyrkk1E (MxkAWpczPBAeHXDyLdtYrk)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group4nc (655:1665)
                          margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-8NL.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // requestZzG (655:1677)
                          'Request',
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
                    // autogroupcvx6i6U (MxkAcEddq1A1rMfgM1CVX6)
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupryN (655:1662)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-5AG.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // profileBVr (655:1678)
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