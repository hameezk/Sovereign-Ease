import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: const Color(0xffecf1fa),
      appBar: appBar(fem),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // servicesQ4R (116:678)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   // autogroupg3soYAd (5yRdibFKfLhaa7q2zUG3so)
                //   padding: EdgeInsets.fromLTRB(
                //       25 * fem, 15 * fem, 45 * fem, 11 * fem),
                //   width: double.infinity,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Container(
                //         // autogroupfepkb8u (5yRaWGS7rpTWJaEgrHfEPK)
                //         margin: EdgeInsets.fromLTRB(
                //             20 * fem, 0 * fem, 0 * fem, 0 * fem),
                //         padding: EdgeInsets.fromLTRB(
                //             10 * fem, 10 * fem, 10 * fem, 10 * fem),
                //         decoration: BoxDecoration(
                //           color: const Color(0xffffffff),
                //           borderRadius: BorderRadius.circular(5 * fem),
                //         ),
                //         child: Row(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Container(
                //               // searchHGd (116:682)
                //               margin: EdgeInsets.fromLTRB(
                //                   0 * fem, 0 * fem, 22 * fem, 0 * fem),
                //               width: 15 * fem,
                //               height: 15 * fem,
                //               child: Image.asset(
                //                 'assets/page-2/images/search-oF7.png',
                //                 fit: BoxFit.contain,
                //               ),
                //             ),
                //             Container(
                //               // searchservice1iR (116:684)
                //               margin: EdgeInsets.fromLTRB(
                //                   0 * fem, 0 * fem, 187 * fem, 0 * fem),
                //               child: Text(
                //                 'Search Service....',
                //                 style: SafeGoogleFont(
                //                   'Poppins',
                //                   fontSize: 10 * ffem,
                //                   fontWeight: FontWeight.w300,
                //                   height: 1.5 * ffem / fem,
                //                   color: const Color(0x59000000),
                //                 ),
                //               ),
                //             ),
                //             SizedBox(
                //               // expandarrowXAy (116:745)
                //               width: 15 * fem,
                //               height: 15 * fem,
                //               child: Image.asset(
                //                 'assets/page-2/images/expand-arrow-V2q.png',
                //                 fit: BoxFit.contain,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    // autogroupfkmbiQ9 (5yPi3t9Uh3xuDLmksifKMb)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 35 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 13 * fem, 20 * fem, 20 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(0 * fem, 1 * fem),
                          blurRadius: 1 * fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // autogroup2kc16Qh (5yPiL3MDk5KLKSA3yH2kC1)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 17 * fem),
                          width: double.infinity,
                          height: 55 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // catcard2JM (112:58)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    7 * fem, 8 * fem, 29 * fem, 7 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffecf1fa),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(1 * fem, 1 * fem),
                                      blurRadius: 1.5 * fem,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupevvoWUR (5yPigwv3yFjgF4RSgrEvVo)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 7 * fem, 8 * fem, 8 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff7bcc70),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                      ),
                                      child: Center(
                                        // heartwithpulse2hf (112:57)
                                        child: SizedBox(
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/heart-with-pulse.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // hospicecarepalliativem9T (112:56)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      constraints: BoxConstraints(
                                        maxWidth: 77 * fem,
                                      ),
                                      child: Text(
                                        'Hospice Care / \nPalliative',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouptf45TY5 (5yPiUNSg7xqbeiggHgtf45)
                                padding: EdgeInsets.fromLTRB(
                                    7 * fem, 8 * fem, 39 * fem, 7 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffecf1fa),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(1 * fem, 1 * fem),
                                      blurRadius: 1.5 * fem,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupb1tdwCM (5yPiYCfdB58zwiAgkib1td)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 7 * fem, 8 * fem, 8 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff7bcc70),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                      ),
                                      child: Center(
                                        // volunteeringFD3 (112:74)
                                        child: SizedBox(
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/volunteering.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // medicalcareBcV (112:62)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'Medical Care',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // autogroupn2hwhqj (5yPirMp337FpHiEp1LN2Hw)
                          width: double.infinity,
                          height: 55 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupovedeFB (5yPj1XDSFavuZ8DhZBoveD)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 20 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    7 * fem, 8 * fem, 13 * fem, 7 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffecf1fa),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(1 * fem, 1 * fem),
                                      blurRadius: 1.5 * fem,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupd5gdKMK (5yPj6MQiiCcVy53d6kD5GD)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 7 * fem, 8 * fem, 8 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff7bcc70),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                      ),
                                      child: Center(
                                        // trustEDP (112:75)
                                        child: SizedBox(
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/trust.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // hospitalrecoverycarexfB (112:67)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 5 * fem, 0 * fem, 0 * fem),
                                      constraints: BoxConstraints(
                                        maxWidth: 93 * fem,
                                      ),
                                      child: Text(
                                        'Hospital Recovery\ncare',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xb2000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupkcx3GQy (5yPjC6k9Hs4buZGdoHkcX3)
                                padding: EdgeInsets.fromLTRB(
                                    7 * fem, 8 * fem, 19 * fem, 7 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xffecf1fa),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(1 * fem, 1 * fem),
                                      blurRadius: 1.5 * fem,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouptacyZey (5yPjFr8u4WkKc8opLmtaCy)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                      padding: EdgeInsets.fromLTRB(
                                          7 * fem, 7 * fem, 8 * fem, 8 * fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff7bcc70),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                      ),
                                      child: Center(
                                        // doctorsbagUmw (112:76)
                                        child: SizedBox(
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: Image.asset(
                                            'assets/page-2/images/doctors-bag.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // companioncareservicesQvV (112:72)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      constraints: BoxConstraints(
                                        maxWidth: 87 * fem,
                                      ),
                                      child: Text(
                                        'Companion Care\nServices',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xb2000000),
                                        ),
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
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 0),
    );
  }
}
