import 'package:flutter/material.dart';
import 'package:myapp/models/appointment_model.dart';
import 'package:myapp/utils.dart';

class CheckInCleintDetails extends StatefulWidget {
  final AppointmentModel appointmentModel;
  const CheckInCleintDetails({super.key, required this.appointmentModel});

  @override
  State<CheckInCleintDetails> createState() => _CheckInCleintDetailsState();
}

class _CheckInCleintDetailsState extends State<CheckInCleintDetails> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // checkinoutrD6 (659:2437)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffecf1fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupuafzyHi (Mxk1jKkwYBsuv7wjHHuAfz)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                  padding: EdgeInsets.fromLTRB(
                      25 * fem, 15 * fem, 25 * fem, 16 * fem),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff7bcc70),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // backrcQ (659:2439)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        width: 35 * fem,
                        height: 35 * fem,
                        child: Image.asset(
                          'assets/page-2/images/back-tXA.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        // checkincheckoutmzG (659:2440)
                        margin: EdgeInsets.fromLTRB(
                            75 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          'Check-in & Check-out',
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
                  // autogroup9nggsnQ (Mxk249YuftvC1RaTvG9NGG)
                  margin: EdgeInsets.fromLTRB(
                      45 * fem, 0 * fem, 45 * fem, 273 * fem),
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 11 * fem, 0 * fem, 19 * fem),
                  width: double.infinity,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // ellipse18JMv (659:2476)
                        margin: EdgeInsets.fromLTRB(
                            135 * fem, 0 * fem, 135 * fem, 6 * fem),
                        width: double.infinity,
                        height: 70 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35 * fem),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/page-2/images/ellipse-18-bg.png',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // vector18bbv (659:2602)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 19 * fem),
                        width: 70 * fem,
                        height: 0 * fem,
                        child: Image.asset(
                          'assets/page-2/images/vector-18.png',
                          width: 70 * fem,
                          height: 0 * fem,
                        ),
                      ),
                      Container(
                        // autogrouplfjnKH2 (Mxk2ZYsaqt6ATAG8oLLFjN)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 175 * fem, 15 * fem),
                        width: 115 * fem,
                        height: 20 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // oct2023EPz (659:2607)
                              left: 40 * fem,
                              top: 3 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 66 * fem,
                                  height: 14 * fem,
                                  child: Text(
                                    '12-Oct-2023',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group19WsJ (659:2614)
                              left: 5 * fem,
                              top: 4 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 10 * fem,
                                  height: 10 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/group-19-pec.png',
                                    width: 10 * fem,
                                    height: 10 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle891cfS (659:2623)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 115 * fem,
                                  height: 20 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      border: Border.all(
                                          color: const Color(0xff7bcc70)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupiytaWVv (Mxk2k3a6bhcBDBNF7tiYTa)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 110 * fem, 15 * fem),
                        width: 180 * fem,
                        height: 20 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // am2DN (659:2608)
                              left: 37 * fem,
                              top: 3 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 51 * fem,
                                  height: 14 * fem,
                                  child: Text(
                                    '09:00am',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // pm7Vi (659:2609)
                              left: 116 * fem,
                              top: 3 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 51 * fem,
                                  height: 14 * fem,
                                  child: Text(
                                    '07:00pm',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // groupchN (659:2610)
                              left: 5 * fem,
                              top: 5 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 10 * fem,
                                  height: 10 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/group-Qt8.png',
                                    width: 10 * fem,
                                    height: 10 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle890Y5E (659:2621)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 180 * fem,
                                  height: 20 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      border: Border.all(
                                          color: const Color(0xff7bcc70)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupocyeqq2 (Mxk2wYEwm2WP69pGWyocyE)
                        margin: EdgeInsets.fromLTRB(
                            25 * fem, 0 * fem, 19 * fem, 16 * fem),
                        width: double.infinity,
                        height: 24 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // vectorB8C (659:2619)
                              left: 8 * fem,
                              top: 5 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 7 * fem,
                                  height: 10 * fem,
                                  child: Image.asset(
                                    'assets/page-2/images/vector-VCt.png',
                                    width: 7 * fem,
                                    height: 10 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // mainstreettampafl33602usagqe (659:2620)
                              left: 37 * fem,
                              top: 6 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 226 * fem,
                                  height: 18 * fem,
                                  child: Text(
                                    '123 Main Street, Tampa, FL 33602, USA',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: const Color(0xff7bcc70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle892AVv (659:2628)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 296 * fem,
                                  height: 20 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      border: Border.all(
                                          color: const Color(0xff7bcc70)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupzlpssv8 (Mxk35cqpHYBbeCWR4kzLPS)
                        margin: EdgeInsets.fromLTRB(
                            25 * fem, 0 * fem, 19 * fem, 15 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 5 * fem, 10 * fem, 5 * fem),
                        width: double.infinity,
                        height: 108 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xffecf1fa),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Align(
                          // todayiprovideddedicatedcareand (659:2646)
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 263 * fem,
                              ),
                              child: Text(
                                'Today, I provided dedicated care and support to our\npatient, ensuring their well-being and comfort. I ad-\nministered prescribed medications at the scheduled\ntimes and monitored their vital signs, noting any\nchanges and promptly informing the healthcare\nteam.',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff009900),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupo4alxq6 (Mxk3CSymZAdaJ42AmNo4aL)
                        margin: EdgeInsets.fromLTRB(
                            25 * fem, 0 * fem, 19 * fem, 13 * fem),
                        width: double.infinity,
                        height: 70 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // maskgroupUYY (659:2651)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 15 * fem, 0 * fem),
                              width: 70 * fem,
                              height: 70 * fem,
                              child: Image.asset(
                                'assets/page-2/images/mask-group-fd2.png',
                                width: 70 * fem,
                                height: 70 * fem,
                              ),
                            ),
                            SizedBox(
                              // autogroupjaygaLg (Mxk3LH64EJTk4rsqYXJaYg)
                              width: 211 * fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // workout7bW (659:2653)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                    child: Text(
                                      'Workout',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xb2000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogrouphjagq1i (Mxk3R7HLgv9LUohm65hjAg)
                                    padding: EdgeInsets.fromLTRB(
                                        8 * fem, 5 * fem, 8 * fem, 6 * fem),
                                    width: double.infinity,
                                    height: 46 * fem,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffecf1fa),
                                      borderRadius:
                                          BorderRadius.circular(3 * fem),
                                    ),
                                    child: Center(
                                      // todayifocusedonimprovingourpat (659:2654)
                                      child: SizedBox(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 195 * fem,
                                          ),
                                          child: Text(
                                            'Today, I focused on improving our patient\'s physical\nwell-being through tailored workouts and exercises. We\nbegan with gentle stretches to increase flexibility,\nfollowed by light resistance exercises to build strength.  ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 7 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff7bcc70),
                                            ),
                                          ),
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
                        // autogroupbdry8uv (Mxk3b2AVTXMa5wC5wqBDrY)
                        margin: EdgeInsets.fromLTRB(
                            25 * fem, 0 * fem, 19 * fem, 0 * fem),
                        width: double.infinity,
                        height: 17 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup4j4csMi (Mxk3k6jhPYQykwE9a94j4C)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 164 * fem, 0 * fem),
                              width: 61 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle879nUg (659:2555)
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 61 * fem,
                                        height: 15 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3 * fem),
                                            color: const Color(0xffecf1fa),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 1 * fem),
                                                blurRadius: 1 * fem,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group25hVA (659:2556)
                                    left: 45 * fem,
                                    top: 3 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10 * fem,
                                        height: 10 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/group-25-Sbr.png',
                                          width: 10 * fem,
                                          height: 10 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // rejectPct (659:2572)
                                    left: 6 * fem,
                                    top: 4 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 33 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'Reject',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xfffd2121),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              // autogroupuuxaHTN (Mxk3pr6nZhUtaU7FC9uUXa)
                              width: 71 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle878Drp (659:2545)
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 71 * fem,
                                        height: 15 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3 * fem),
                                            color: const Color(0xffecf1fa),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 1 * fem),
                                                blurRadius: 1 * fem,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // group26uzY (659:2559)
                                    left: 56 * fem,
                                    top: 3 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 10 * fem,
                                        height: 10 * fem,
                                        child: Image.asset(
                                          'assets/page-2/images/group-26-jgt.png',
                                          width: 10 * fem,
                                          height: 10 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // approveRhz (659:2562)
                                    left: 6 * fem,
                                    top: 4 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 44 * fem,
                                        height: 13 * fem,
                                        child: Text(
                                          'Approve',
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(fem, ffem, context, 2),
    );
  }
}
