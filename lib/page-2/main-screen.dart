import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/models/care_provider_model.dart';
import 'package:myapp/page-2/care-providers.dart';
import 'package:myapp/page-2/doctor-info.dart';
import 'package:myapp/page-2/services.dart';
import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    updateLoginInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: appBar(fem),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // mainscreenX5T (58:472)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupkqnm4LH (5yPkWEDxfHNYCuFqacKQNM)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 15 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  // height: 686 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  // hello625 (112:7)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                  child: Text(
                                    'Hello,',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0x59000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              // autogroup8htmbzR (5yPh7psDXEgs9QHWjb8Htm)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 20 * fem, 13 * fem),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // raymysteriow2h (112:8)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      '${loggedinUser!.firstName} ${loggedinUser!.lastName}',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xb2000000),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    // maskgroup3Ld (112:46)
                                    width: 30 * fem,
                                    height: 30 * fem,
                                    child: Image.asset(
                                      'assets/page-2/images/mask-group.png',
                                      width: 30 * fem,
                                      height: 30 * fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Container(
                            //   // autogroupnbz9aLZ (5yPhHQRbA1SNNszXuANBz9)
                            //   margin: EdgeInsets.fromLTRB(
                            //       20 * fem, 0 * fem, 20 * fem, 20 * fem),
                            //   padding: EdgeInsets.fromLTRB(
                            //       10 * fem, 10 * fem, 25 * fem, 10 * fem),
                            //   width: double.infinity,
                            //   decoration: BoxDecoration(
                            //     color: const Color(0xffffffff),
                            //     borderRadius: BorderRadius.circular(5 * fem),
                            //   ),
                            //   child: Row(
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     children: [
                            //       Container(
                            //         // search4Fj (112:12)
                            //         margin: EdgeInsets.fromLTRB(
                            //             0 * fem, 0 * fem, 22 * fem, 0 * fem),
                            //         width: 15 * fem,
                            //         height: 15 * fem,
                            //         child: Image.asset(
                            //           'assets/page-2/images/search-ffX.png',
                            //           fit: BoxFit.contain,
                            //         ),
                            //       ),
                            //       Text(
                            //         // searchz9P (112:13)
                            //         'Search....',
                            //         style: SafeGoogleFont(
                            //           'Poppins',
                            //           fontSize: 10 * ffem,
                            //           fontWeight: FontWeight.w300,
                            //           height: 1.5 * ffem / fem,
                            //           color: const Color(0x59000000),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Container(
                              // autogroup6sc5j6y (5yPhUQ7GcaeUhNmbkz6sc5)
                              margin: EdgeInsets.fromLTRB(
                                  20 * fem, 0 * fem, 20 * fem, 22 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  25 * fem, 14 * fem, 25 * fem, 13 * fem),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xff7bcc70),
                                borderRadius: BorderRadius.circular(5 * fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupxmxfRVb (5yPhfZTLe55xChSKTtxMXF)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // emergencymedicalsupportrequire (112:37)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 14 * fem, 0 * fem),
                                          constraints: BoxConstraints(
                                            maxWidth: 199 * fem,
                                          ),
                                          child: Text(
                                            'Incapable of\nself-sufficiency,\nfor yourself &\nyour loved ones.',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupzwq9Ehw (5yPhjyVegPh8eaY7PjZWQ9)
                                          margin: EdgeInsets.fromLTRB(50 * fem,
                                              0 * fem, 0 * fem, 17 * fem),
                                          width: 77 * fem,
                                          height: 77 * fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // ellipse10Abb (112:40)
                                                left: 0 * fem,
                                                top: 8 * fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 69 * fem,
                                                    height: 69 * fem,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    34.5 * fem),
                                                        color: const Color(
                                                            0xffffffff),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: const Color(
                                                                0x3f000000),
                                                            offset: Offset(
                                                                0 * fem,
                                                                3 * fem),
                                                            blurRadius:
                                                                2.5 * fem,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // image16F7F (112:39)
                                                left: 0 * fem,
                                                top: 0 * fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 77 * fem,
                                                    height: 77 * fem,
                                                    child: Image.asset(
                                                      'assets/page-2/images/image-16.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // autogroupnf6qmLV (5yPhqyKf7RzHNJbbrunF6q)
                                    margin: EdgeInsets.fromLTRB(
                                        65 * fem, 0 * fem, 65 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: 25 * fem,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(3 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
                                          offset: Offset(0 * fem, 2 * fem),
                                          blurRadius: 2.5 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Contact a doctor',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // categoriesRR3 (112:47)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 19 * fem),
                              child: Text(
                                'Categories',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                              ),
                            ),
                            Container(
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
                                  GestureDetector(
                                    onTap: () => navigate(
                                        context, const AllCategories()),
                                    child: Container(
                                      // seeallB2q (112:55)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 1 * fem, 11 * fem),
                                      child: Text(
                                        'see all',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff7bcc70),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroup2kc16Qh (5yPiL3MDk5KLKSA3yH2kC1)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 17 * fem),
                                    width: double.infinity,
                                    height: 55 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // catcard2JM (112:58)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 20 * fem, 0 * fem),
                                          padding: EdgeInsets.fromLTRB(7 * fem,
                                              8 * fem, 29 * fem, 7 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffecf1fa),
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset:
                                                    Offset(1 * fem, 1 * fem),
                                                blurRadius: 1.5 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupevvoWUR (5yPigwv3yFjgF4RSgrEvVo)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    7 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    7 * fem,
                                                    7 * fem,
                                                    8 * fem,
                                                    8 * fem),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff7bcc70),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
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
                                                    0 * fem,
                                                    1 * fem,
                                                    0 * fem,
                                                    0 * fem),
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
                                                    color:
                                                        const Color(0xb2000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // autogrouptf45TY5 (5yPiUNSg7xqbeiggHgtf45)
                                          padding: EdgeInsets.fromLTRB(7 * fem,
                                              8 * fem, 35 * fem, 7 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffecf1fa),
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset:
                                                    Offset(1 * fem, 1 * fem),
                                                blurRadius: 1.5 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupb1tdwCM (5yPiYCfdB58zwiAgkib1td)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    7 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    7 * fem,
                                                    7 * fem,
                                                    0 * fem,
                                                    8 * fem),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff7bcc70),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
                                                ),
                                                child: Center(
                                                  // volunteeringFD3 (112:74)
                                                  child: SizedBox(
                                                    width: 35 * fem,
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
                                                    0 * fem,
                                                    1 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Medical Care',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 10 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175 * ffem / fem,
                                                    color:
                                                        const Color(0xb2000000),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupovedeFB (5yPj1XDSFavuZ8DhZBoveD)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 20 * fem, 0 * fem),
                                          padding: EdgeInsets.fromLTRB(7 * fem,
                                              8 * fem, 13 * fem, 7 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffecf1fa),
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset:
                                                    Offset(1 * fem, 1 * fem),
                                                blurRadius: 1.5 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupd5gdKMK (5yPj6MQiiCcVy53d6kD5GD)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    7 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    7 * fem,
                                                    7 * fem,
                                                    8 * fem,
                                                    8 * fem),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff7bcc70),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
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
                                                    0 * fem,
                                                    5 * fem,
                                                    0 * fem,
                                                    0 * fem),
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
                                                    color:
                                                        const Color(0xb2000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // autogroupkcx3GQy (5yPjC6k9Hs4buZGdoHkcX3)
                                          padding: EdgeInsets.fromLTRB(7 * fem,
                                              8 * fem, 19 * fem, 7 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffecf1fa),
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset:
                                                    Offset(1 * fem, 1 * fem),
                                                blurRadius: 1.5 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogrouptacyZey (5yPjFr8u4WkKc8opLmtaCy)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    7 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    7 * fem,
                                                    7 * fem,
                                                    8 * fem,
                                                    8 * fem),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff7bcc70),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
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
                                                    0 * fem,
                                                    1 * fem,
                                                    0 * fem,
                                                    0 * fem),
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
                                                    color:
                                                        const Color(0xb2000000),
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
                            Container(
                              // autogroupkf7wusF (5yPjmVxA5smLq7KxzUkf7w)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 20 * fem, 12 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // topcareprovidersSsB (112:77)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 130 * fem, 0 * fem),
                                    child: Text(
                                      'Top Care Providers',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xb2000000),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => navigate(
                                        context, const CareProviders()),
                                    child: Text(
                                      // seeallB45 (112:91)
                                      'see all',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
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
                      Expanded(
                        // autogroupzt8yXrH (5yPsqSB8Kt4S8VuuPJzt8y)
                        // width: double.infinity,
                        // height: 548 * fem,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(5 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(1 * fem, 1 * fem),
                                  blurRadius: 1.5 * fem,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: StreamBuilder<Object>(
                                  stream: FirebaseFirestore.instance
                                      .collection("staffMembers")
                                      // .where('filter', isEqualTo: 'Apartments')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.active) {
                                      if (snapshot.hasData) {
                                        QuerySnapshot doctorsSnapshot =
                                            snapshot.data as QuerySnapshot;

                                        return ListView.builder(
                                          itemCount:
                                              doctorsSnapshot.docs.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            CareProviderModel
                                                careProviderModel =
                                                CareProviderModel.fromMap(
                                                    doctorsSnapshot.docs[index]
                                                            .data()
                                                        as Map<String,
                                                            dynamic>);
                                            return buildDoctorCard(
                                                fem, ffem, careProviderModel);
                                          },
                                        );
                                      } else if (snapshot.hasError) {
                                        return Center(
                                          child:
                                              Text(snapshot.error.toString()),
                                        );
                                      } else {
                                        return const Center(
                                          child: Text("No Announcements"),
                                        );
                                      }
                                    } else {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // bottomBar(fem, ffem),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 0),
    );
  }

  buildDoctorCard(
      double fem, double ffem, CareProviderModel careProviderModel) {
    return GestureDetector(
      onTap: () => navigate(
          context,
          DoctorInfo(
            careProviderModel: careProviderModel,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
        child: Container(
          // property1defaultpcq (144:16)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 17 * fem),
          padding: EdgeInsets.fromLTRB(10 * fem, 12 * fem, 24 * fem, 16 * fem),
          width: double.infinity,
          height: 92 * fem,
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
                // autogroupcqhotch (5yPmUnS4Ls745E6sR4cQHo)
                margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(7 * fem, 7 * fem, 7 * fem, 7 * fem),
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Center(
                  // doctormaleskintype2bn1 (112:95)
                  child: SizedBox(
                    width: 46 * fem,
                    height: 46 * fem,
                    child: Image.network(
                      careProviderModel.profilePic ?? '',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20 * fem,
              ),
              Container(
                // autogroupsiphJgR (5yPmcN3mAd6B4o84RaSipH)
                margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                width: 170 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupyqbkSGq (5yPmomtR3VNhMMdFu7yQBK)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 3 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // drstrangeyGm (112:82)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 6 * fem, 0 * fem),
                            child: Text(
                              'Dr. ${careProviderModel.firstName} ${careProviderModel.lastName}',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xb2000000),
                              ),
                            ),
                          ),
                          Container(
                            // HoF (144:15)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 6 * fem, 0 * fem, 0 * fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xb2000000),
                                ),
                                children: [
                                  const TextSpan(
                                    text: '(',
                                  ),
                                  TextSpan(
                                    text: '\$',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                  TextSpan(
                                    text: careProviderModel.charges ?? '1200',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                  const TextSpan(
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
                      // certifiednursingassistantskqF (112:83)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 4 * fem),
                      child: Text(
                        careProviderModel.jobTitle ?? '',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xb2000000),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // staroYd (112:85)
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/star-UoT.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          // starubf (112:88)
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/star-obF.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          // starTNH (112:89)
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/star-k73.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          // starCKs (112:90)
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/star-BXF.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // stark6V (112:86)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5 * fem, 0 * fem),
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/star-5eH.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          // HMK (112:99)
                          '(1398)',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xb2000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20 * fem,
              ),
              SizedBox(
                // autogrouphwqt241 (5yPnDgNFVBwcdqvPrHHwqT)
                width: 45 * fem,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouppteuAR7 (5yPnKWXsMK1QAk6EUNPtEu)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 29 * fem),
                      padding: EdgeInsets.fromLTRB(
                          2 * fem, 2 * fem, 3 * fem, 3 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(2 * fem),
                      ),
                      child: Center(
                        // addbookmarkURo (112:98)
                        child: SizedBox(
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-2/images/add-bookmark-pmF.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // autogroup4ejs1Aq (5yPnNbH4rHmf824odW4ejs)
                      width: double.infinity,
                      height: 15 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff7bcc70)),
                        borderRadius: BorderRadius.circular(2 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Open',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 8 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff7bcc70),
                          ),
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
  
  Future<void> updateLoginInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('isServiceSeeker',true);
  }
}
