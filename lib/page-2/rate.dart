import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/utils.dart';

class RateUser extends StatelessWidget {
  const RateUser({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // rateJmo (175:2405)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupukw5pk9 (5yQywG2xravunTSvCNukW5)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 15 * fem, 25 * fem, 17 * fem),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff7bcc70),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          // backKS1 (175:2407)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          width: 35 * fem,
                          height: 35 * fem,
                          child: Image.asset(
                            'assets/page-2/images/back-Us3.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        // rateyourexperienceSWd (175:2408)
                        margin: EdgeInsets.fromLTRB(
                            78 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          'Rate your Experience',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupshbfwCV (5yR9Sjh4irHhBw9bXxSHbf)
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 34 * fem, 25 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupflch4Y1 (5yQzbzRRoy1LgS18UPfLch)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 21 * fem),
                        width: double.infinity,
                        height: 650 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0 * fem, 0 * fem),
                              blurRadius: 2.5 * fem,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // howwasyourexperienceKyj (175:2505)
                              left: 49 * fem,
                              top: 98 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 282 * fem,
                                  height: 25 * fem,
                                  child: Text(
                                    'How was your Experience?',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroup1jvdCGq (5yR2bbmTgtvrDU3yqd1JvD)
                              left: 45 * fem,
                              top: 214 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // professionalism78u (175:2535)
                                      'Professionalism',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroup3wfbqah (5yR2vqiQEu3YGqQr6K3WFb)
                                      padding: EdgeInsets.fromLTRB(
                                          98 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starAss (175:2536)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-GmX.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starVfF (175:2537)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-cAd.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starRoo (175:2538)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-nA5.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starMxM (175:2539)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-AxR.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starthP (175:2540)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-kwT.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogrouppmhkFH3 (5yR39RBn6BwcsB9cVUPmhK)
                              left: 45 * fem,
                              top: 245 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // communicationmmB (178:2548)
                                      'Communication',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupcop7KXo (5yR3RVZKrkgNNrb5fVCoP7)
                                      padding: EdgeInsets.fromLTRB(
                                          97 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starf5s (178:2549)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-nwb.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starngH (178:2550)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-WTb.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starv1o (178:2551)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-mXf.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starFZs (178:2602)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-Tah.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starbNq (178:2553)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-q6H.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupkuemM77 (5yR3djhvaD7ibYYYNUKUEM)
                              left: 45 * fem,
                              top: 276 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // clinicalcompetencesbF (178:2554)
                                      'Clinical Competence',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogrouplwb3bGM (5yR3uPvVvUn49AFsvmLWB3)
                                      padding: EdgeInsets.fromLTRB(
                                          66 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starirm (178:2555)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-J7K.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starSnm (178:2556)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-fTX.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starzJV (178:2604)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-6rd.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star8fb (178:2603)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-3gD.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starUjT (178:2559)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-gQR.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupmy4dRPo (5yR48DtTd9XBWjq86ZMy4d)
                              left: 45 * fem,
                              top: 307 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // punctualitykS5 (178:2560)
                                      'Punctuality',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupkpl9tYH (5yR4NP9XsA7ENvXb34KpL9)
                                      padding: EdgeInsets.fromLTRB(
                                          127 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starDqT (178:2561)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-U1o.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starxo3 (178:2562)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-wJ1.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starhVj (178:2563)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-RE9.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starSiD (178:2564)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-pHw.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starPdT (178:2565)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-u6Z.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupmhjxYFT (5yR4aNoYjEhXpNeZyQmHjX)
                              left: 45 * fem,
                              top: 338 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // patientcenteredcare5FP (178:2566)
                                      'Patient-Centered Care',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupj913pCy (5yR4pY4cyFHagZM2uuj913)
                                      padding: EdgeInsets.fromLTRB(
                                          54 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starx4H (178:2567)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-ACq.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starVa1 (178:2568)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-keD.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star2pq (178:2569)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-p6d.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starAg9 (178:2570)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-hsF.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star75b (178:2605)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-1jo.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupcdfoTfF (5yR52StSYsGCXbXBvicDFo)
                              left: 45 * fem,
                              top: 369 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // respectforprivacyzQH (178:2572)
                                      'Respect for Privacy',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupdg9pKxM (5yR5FGrQFY1KuB6S6Wdg9P)
                                      padding: EdgeInsets.fromLTRB(
                                          75 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starrhP (178:2573)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-KZK.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // staraNV (178:2574)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-2bb.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starW1F (178:2575)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-xgy.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starqZK (178:2606)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-kxh.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // staryvR (178:2577)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-CKT.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupxmfx8YR (5yR5T6r2YhNG9oKmBmxMFX)
                              left: 45 * fem,
                              top: 400 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // culturalsensitivityfYM (178:2578)
                                      'Cultural Sensitivity',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupf1ayDJy (5yR5gBJa6jxSJcjV8Cf1ay)
                                      padding: EdgeInsets.fromLTRB(
                                          78 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starYc9 (178:2579)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-BsF.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // stargiM (178:2580)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-dKf.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starRfw (178:2581)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-Ekq.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starySZ (178:2582)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-R2Z.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star7of (178:2583)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-Gp9.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupygh74yo (5yR5t1JCPuKNZExpDTygh7)
                              left: 45 * fem,
                              top: 431 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // safetyPWH (178:2584)
                                      'Safety',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupwn49jq3 (5yR65R8rGmbtqoU1h1WN49)
                                      padding: EdgeInsets.fromLTRB(
                                          164 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // star5P7 (178:2585)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-dPX.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star1nZ (178:2586)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-tA5.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starMbX (178:2608)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-FH3.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star6Z7 (178:2607)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-Nk9.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star2xZ (178:2589)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-MHs.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupdktvPYD (5yR6TjpzKkUqrSoT6qDKtV)
                              left: 45 * fem,
                              top: 462 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // feedbackresponsivenessj6H (178:2590)
                                      'Feedback Responsiveness',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupmbb7rwb (5yR6fu9PkkJWUip5tGmbb7)
                                      padding: EdgeInsets.fromLTRB(
                                          27 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starQCR (178:2591)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-Udf.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // stark1P (178:2592)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-4LR.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starsbo (178:2593)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-cRF.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star1i1 (178:2594)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-yeR.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starZDj (178:2595)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-841.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupggbti6d (5yR6tZSxtVpGfUVgCygGBT)
                              left: 44 * fem,
                              top: 493 * fem,
                              child: SizedBox(
                                width: 290 * fem,
                                height: 16 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // transparencySHX (178:2596)
                                      'Transparency',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 13 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff7bcc70),
                                      ),
                                    ),
                                    Container(
                                      // autogroupwkcrnMP (5yR74tV65Q6vEfi8gSwkcR)
                                      padding: EdgeInsets.fromLTRB(
                                          115 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            // starvCh (178:2597)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-VVK.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star3HK (178:2598)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-iss.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // starBeR (178:2599)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-h6q.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star8Jm (178:2600)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-vJ5.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2 * fem,
                                          ),
                                          SizedBox(
                                            // star4iD (178:2609)
                                            width: 15 * fem,
                                            height: 15 * fem,
                                            child: Image.asset(
                                              'assets/page-2/images/star-jzZ.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupb5kdczd (5yR1fi9b5ztBLMTPYab5kd)
                              left: 49 * fem,
                              top: 23 * fem,
                              child: SizedBox(
                                width: 161 * fem,
                                height: 60 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // image19MBX (175:2534)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 14 * fem, 0 * fem),
                                      width: 60 * fem,
                                      height: 60 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/image-19.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      // autogroupdi2ufi1 (5yR1x7quzQ5fDggAQmdi2u)
                                      width: 87 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // mrbeanRSH (175:2506)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 11 * fem),
                                            child: Text(
                                              loggedinUser!.firstName! +
                                                  loggedinUser!.lastName!,
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 20 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0xff7bcc70),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // autogroup9ex9YWu (5yR237hb1vzcpTPjoR9ex9)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 25 * fem, 0 * fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  // stargND (175:2526)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      5 * fem,
                                                      1 * fem),
                                                  width: 20 * fem,
                                                  height: 20 * fem,
                                                  child: Image.asset(
                                                    'assets/page-2/images/star-WJu.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Text(
                                                  // 1vH (175:2510)
                                                  '4.6',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 15 * ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2175 * ffem / fem,
                                                    color:
                                                        const Color(0xff7bcc70),
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
                            Positioned(
                              // autogroupnndoAYH (5yR7MiLPQ6Np64f3AMnNdo)
                              left: 24 * fem,
                              top: 524 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    20 * fem, 11 * fem, 20 * fem, 11 * fem),
                                width: 340 * fem,
                                height: 108 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0 * fem, 1 * fem),
                                      blurRadius: 1 * fem,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Type your feedback here!!!!',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0x7f7bcc70),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // autogroupy7aqc9P (5yR2GMpX8tpAA6h7avy7aq)
                              left: 115 * fem,
                              top: 139 * fem,
                              child: SizedBox(
                                width: 150 * fem,
                                height: 30 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      // star8Nd (175:2527)
                                      width: 30 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-TPw.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // star5Ym (175:2528)
                                      width: 30 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-TJ9.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // starRsX (175:2529)
                                      width: 30 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-eAV-22d.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // starAq7 (175:2530)
                                      width: 30 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-5c5.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      // starvZP (175:2525)
                                      width: 30 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/page-2/images/star-cho.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // buttonUqo (175:2531)
                        margin: EdgeInsets.fromLTRB(
                            45 * fem, 0 * fem, 45 * fem, 0 * fem),
                        width: double.infinity,
                        height: 35 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff7bcc70),
                          borderRadius: BorderRadius.circular(5 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f000000),
                              offset: Offset(0 * fem, 3 * fem),
                              blurRadius: 2.5 * fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: const Color(0xffffffff),
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
      ),
      bottomNavigationBar: (isClient)
          ? bottomBar(fem, ffem, context, 1)
          : bottomBarCareProvider(fem, ffem, context, 1),
    );
  }
}
