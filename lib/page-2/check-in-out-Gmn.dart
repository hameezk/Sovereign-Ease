import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class CheckIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // checkinoutU9E (657:1927)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffecf1fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupufyrC5E (MxjouadEECni58T7nbuFyr)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
              padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 25*fem, 16*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff7bcc70),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // backtTr (657:1929)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                    width: 35*fem,
                    height: 35*fem,
                    child: Image.asset(
                      'assets/page-2/images/back-uPv.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // checkincheckout1oN (657:1930)
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
              // autogroup9dd2Wk8 (Mxjpbj911PKk485Nks9dd2)
              margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 45*fem, 208*fem),
              width: double.infinity,
              height: 538*fem,
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
                    // ellipse18j76 (658:2194)
                    left: 135*fem,
                    top: 11*fem,
                    child: Align(
                      child: SizedBox(
                        width: 70*fem,
                        height: 70*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(35*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/page-2/images/ellipse-18-bg-jF6.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // drstrangeetG (658:2178)
                    left: 97*fem,
                    top: 91*fem,
                    child: Align(
                      child: SizedBox(
                        width: 118*fem,
                        height: 25*fem,
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
                    ),
                  ),
                  Positioned(
                    // certifiednursingassistantsYTr (658:2179)
                    left: 98*fem,
                    top: 119*fem,
                    child: Align(
                      child: SizedBox(
                        width: 144*fem,
                        height: 13*fem,
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
                    ),
                  ),
                  Positioned(
                    // autogrouprpfapgG (MxjrFM4LnBbRC5FvZWRpFa)
                    left: 10*fem,
                    top: 171*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group19YMN (658:2195)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-19.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octqrG (658:2200)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 70*fem, 0*fem),
                            child: Text(
                              '12-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupdz6gA7r (MxjrfvBjVZ5oDs7fu2DZ6g)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 2*fem),
                            width: 61*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle879UuE (658:2226)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 61*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group25An4 (658:2217)
                                  left: 45*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-25.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rejectgEc (658:2230)
                                  left: 6*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 33*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Reject',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xfffd2121),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupm5qiA9n (MxjrnVq6uogj6Unwq1M5qi)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 2*fem),
                            width: 71*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle878t5n (658:2206)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 71*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group26B4t (658:2218)
                                  left: 56*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-26.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approve5vx (658:2219)
                                  left: 6*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 44*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approve',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorij2 (658:2231)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-puN.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupruikqYk (Mxju4gXrG435hfxDuWrUik)
                    left: 10*fem,
                    top: 346*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group39mBW (658:2314)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-39.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octU5v (658:2309)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 148*fem, 0*fem),
                            child: Text(
                              '07-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouprup4aue (MxjuLRactnK6qhcPPMRup4)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle885Jqe (658:2417)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedCAL (658:2418)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupJUG (658:2419)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-3HJ.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorphW (658:2389)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-SU8.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupq94t9Dz (Mxjs25GpAbxzomsdJhQ94t)
                    left: 10*fem,
                    top: 206*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group27fCL (658:2234)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-27.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octBAg (658:2233)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 153*fem, 0*fem),
                            child: Text(
                              '11-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupelfahep (MxjsLu4nJK1Gu5WMwfeLfA)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle881doN (658:2395)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approved8k8 (658:2399)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupF44 (658:2401)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-68g.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorZKe (658:2249)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-vet.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogrouped44UxQ (MxjuW5yBp1gHfbGEUUED44)
                    left: 10*fem,
                    top: 381*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group40zQx (658:2319)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-40.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octWeC (658:2310)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 148*fem, 0*fem),
                            child: Text(
                              '06-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupn3onRWG (Mxjum5YCtcRATuQxeQn3on)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle8869SG (658:2421)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approveddcL (658:2422)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupXhi (658:2423)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-ai4.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorF7v (658:2390)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-QxY.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupueekNiL (MxjsXJw6mfuc4gfeLgUEEk)
                    left: 10*fem,
                    top: 241*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group30J6C (658:2252)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-30.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octccg (658:2251)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 150*fem, 0*fem),
                            child: Text(
                              '10-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouplk6cXUk (Mxjsz8Vk9S1R7d3hbtLk6c)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle882epG (658:2405)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedxa4 (658:2406)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupH6Y (658:2407)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-s7W.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorCDW (658:2267)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-Atg.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogrouplktj87A (MxjuvQbzg1Kcv9HW3MLkTJ)
                    left: 10*fem,
                    top: 416*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group41e5W (658:2324)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-41.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // oct9nx (658:2311)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 148*fem, 0*fem),
                            child: Text(
                              '05-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupfrzs5Ri (Mxjv8EbcyAgZAmWq8cfRZS)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle8871aG (658:2425)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedhxt (658:2426)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupCue (658:2427)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-krk.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorXS8 (658:2391)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-dRr.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupvselTKn (MxjtAHsUmR4hVzNWEGVSEL)
                    left: 10*fem,
                    top: 276*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group33BFn (658:2270)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-33.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octuBn (658:2269)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 148*fem, 0*fem),
                            child: Text(
                              '09-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouprgdnd7n (MxjtSXuR6u2pCVhdFNRGDN)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle883kCQ (658:2409)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedeHn (658:2410)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupa4x (658:2411)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-A1e.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vector5nQ (658:2285)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-TE8.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogrouphkpvoiQ (MxjvJEJy2EWUNJwyuuhKPv)
                    left: 10*fem,
                    top: 451*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group42KRr (658:2329)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-42.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // oct2LG (658:2312)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 147*fem, 0*fem),
                            child: Text(
                              '04-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupfbclkGG (MxjvVZKRceBK4TWMTufbcL)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle888fe8 (658:2429)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedmSG (658:2430)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupH9i (658:2431)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-Sxg.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorbRJ (658:2392)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-9rY-XTn.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupzxm67uS (MxjtchH9it66as2RskZxM6)
                    left: 10*fem,
                    top: 311*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group36qqS (658:2288)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-36.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octMon (658:2287)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 147*fem, 0*fem),
                            child: Text(
                              '08-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouphnb2UtQ (MxjttXA7e4yoKJdRH8hnb2)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle884oQt (658:2413)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedH5A (658:2414)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupBgL (658:2415)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-Mm2.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorJW4 (658:2303)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-gKr.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupxwuq2gx (MxjvdtQszXhaPk2ynKXWUQ)
                    left: 10*fem,
                    top: 486*fem,
                    child: Container(
                      width: 320*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group43MUL (658:2334)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 4*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/group-43.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                          Container(
                            // octTXN (658:2313)
                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 148*fem, 0*fem),
                            child: Text(
                              '03-Oct',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff7bcc70),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouprbayaM6 (MxjvqiQWHh4WeNGJsarBaY)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 2*fem),
                            width: 75*fem,
                            height: 17*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle889Vix (658:2433)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 75*fem,
                                      height: 15*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(3*fem),
                                          color: Color(0xffecf1fa),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0*fem, 1*fem),
                                              blurRadius: 1*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // approvedBrg (658:2434)
                                  left: 5*fem,
                                  top: 4*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 51*fem,
                                      height: 13*fem,
                                      child: Text(
                                        'Approved',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 10*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // groupHui (658:2435)
                                  left: 60*fem,
                                  top: 3*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10*fem,
                                      height: 10*fem,
                                      child: Image.asset(
                                        'assets/page-2/images/group-5qS.png',
                                        width: 10*fem,
                                        height: 10*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // vectorQjS (658:2393)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            width: 7*fem,
                            height: 10*fem,
                            child: Image.asset(
                              'assets/page-2/images/vector-Ckg.png',
                              width: 7*fem,
                              height: 10*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupntzc8QY (MxjqnrpUYFxLWnfAzUntzC)
                    left: 97*fem,
                    top: 136*fem,
                    child: Container(
                      width: 110*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // starp2U (658:2183)
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/star-kZE.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            // starYz4 (658:2184)
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/star-TJ8.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            // starJTS (658:2185)
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/star-UZ6.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            // star3vp (658:2186)
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/star-fHA.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            // starPzg (658:2182)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/page-2/images/star-w4L.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            // X5J (658:2180)
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
                  ),
                  Positioned(
                    // vectorfSQ (658:2394)
                    left: 165*fem,
                    top: 524.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 10*fem,
                        height: 7*fem,
                        child: Image.asset(
                          'assets/page-2/images/vector-whz.png',
                          width: 10*fem,
                          height: 7*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group14ZXn (657:2050)
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
                    // autogroupo94kT7N (MxjzUhBJ63QeY7fEGpo94k)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // layer2n9e (657:2059)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/layer-2-xZ6.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // homeJ7z (657:2067)
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
                    // autogroupifyt3bN (Mxjzbgydvb5zNo4dpXifYt)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupBha (657:2061)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-1yr.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // notification6Ze (657:2068)
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
                    // autogroupho9j2y6 (MxjziBnp4P5Eezo5pyHo9J)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group6ApQ (657:2052)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-6-m1i.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // checkinoutsip (657:2069)
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
                    // autogroupqlq8Qye (Mxjzow8Ee3XLbV26XWqLQ8)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 52*fem, 0*fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vector9RS (657:2072)
                          margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/vector-QKS.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // searchrqe (657:2070)
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
                    // autogroup2umecK2 (MxjzuBUVWxHLyVa9go2UmE)
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // groupy9a (657:2064)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 10*fem),
                          width: 25*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/page-2/images/group-EZN.png',
                            width: 25*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // profilegZn (657:2071)
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